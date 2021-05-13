
StaticPopupDialogs["EXTERNAL_LINK"] = {
	text = BROWSER_EXTERNAL_LINK_DIALOG,
	button1 = OKAY,
	button3 = BROWSER_COPY_LINK,
	button2 = CANCEL,
	OnAccept = function(self, data)
		data.browser:OpenExternalLink();
	end,
	OnAlt = function(self, data)
		data.browser:CopyExternalLink();
	end,
	OnShow = function(self)
		
	end,
	showAlert = 1,
	timeout = 0,
	hideOnEscape = 1
};

function ToggleHelpFrame()
	if (FSHelpFrame:IsShown()) then
		HideUIPanel(FSHelpFrame);
	else
		FSHelpFrame_ShowFrame();
		HideUIPanel(GameMenuFrame);
	end
end

function HelpFrame_GMResponse_Acknowledge(markRead)
	FShaveResponse = false;
	FSHelpFrame_SetTicketEntry();
	if ( markRead ) then
		needMoreHelp = false;
		SendChatMessage(".ticket FSCticketRes", "guild", nil, nil);
		FSHelpFrame_ShowFrame(HELPFRAME_OPEN_TICKET);
	else
		needMoreHelp = true;
		SendChatMessage(".ticket FSCticketRes", "guild", nil, nil);
		FSHelpFrame_ShowFrame(HELPFRAME_OPEN_TICKET);
	end
	if ( not FSTicketStatusFrame.hasGMSurvey and FSTicketStatusFrame:IsShown() ) then
		FSTicketStatusFrame:Hide();
	end
end


--Store all possible windows the FSHelpFrame will open.
FSHelpFrameWindows = {}

-- Side Navigation Table
FSHelpFrameNavTbl = {}
FSHelpFrameNavTbl[6] = {	text = KNOWLEDGE_BASE,
						icon ="Interface\\HelpFrame\\HelpIcon-KnowledgeBase",
						frame = "kbase"
					};
FSHelpFrameNavTbl[2] = {	text = HELPFRAME_ACCOUNTSECURITY_TITLE, 
						icon ="Interface\\HelpFrame\\HelpIcon-AccountSecurity",
						frame = "asec"
					};
FSHelpFrameNavTbl[3] = {	text = HELPFRAME_STUCK_TITLE, 
						icon ="Interface\\HelpFrame\\HelpIcon-CharacterStuck",
						frame = "stuck"
					};
FSHelpFrameNavTbl[4] = {	text = HELPFRAME_REPORT_BUG_TITLE, 
						icon="Interface\\HelpFrame\\HelpIcon-Bug",
						frame = "bug"
					};
FSHelpFrameNavTbl[5] = {	text = HELPFRAME_REPORT_PLAYER_TITLE, 
						icon="Interface\\HelpFrame\\HelpIcon-ReportAbuse",
						frame = "report"
					};
FSHelpFrameNavTbl[1] = {	text = HELP_TICKET_OPEN,
						icon ="Interface\\HelpFrame\\HelpIcon-OpenTicket",
						frame = "FSticket"
					};					

--LAG REPORITNG BUTTONS					
FSHelpFrameNavTbl[7] = {	icon ="Interface\\HelpFrame\\ReportLagIcon-Loot",
						tooltipTex = BUTTON_LAG_LOOT_TOOLTIP,
						newbieText = BUTTON_LAG_LOOT_NEWBIE
					};
FSHelpFrameNavTbl[8] = {	icon ="Interface\\HelpFrame\\ReportLagIcon-AuctionHouse",
						tooltipTex = BUTTON_LAG_AUCTIONHOUSE_TOOLTIP,
						newbieText = BUTTON_LAG_AUCTIONHOUSE_NEWBIE
					};
FSHelpFrameNavTbl[9] = {	icon ="Interface\\HelpFrame\\ReportLagIcon-Mail",
						tooltipTex = BUTTON_LAG_MAIL_TOOLTIP,
						newbieText = BUTTON_LAG_MAIL_NEWBIE
					};
FSHelpFrameNavTbl[10] = {	icon ="Interface\\HelpFrame\\ReportLagIcon-Chat",
						tooltipTex = BUTTON_LAG_CHAT_TOOLTIP,
						newbieText = BUTTON_LAG_CHAT_NEWBIE
					};
FSHelpFrameNavTbl[11] = {	icon ="Interface\\HelpFrame\\ReportLagIcon-Movement",
						tooltipTex = BUTTON_LAG_MOVEMENT_TOOLTIP,
						newbieText = BUTTON_LAG_MOVEMENT_NEWBIE
					};
FSHelpFrameNavTbl[12] = {	icon ="Interface\\HelpFrame\\ReportLagIcon-Spells",
						tooltipTex = BUTTON_LAG_SPELL_TOOLTIP,
						newbieText = BUTTON_LAG_SPELL_NEWBIE
					};
-- Open Ticket Buttons
FSHelpFrameNavTbl[13] = {	text = KBASE_TOP_ISSUES, 
						icon ="Interface\\HelpFrame\\HelpIcon-HotIssues",
						frame = "kbase",
						func = "KnowledgeBase_GotoTopIssues",
					};
FSHelpFrameNavTbl[14] = {	text = HELP_TICKET_OPEN, -- HELP_TICKET_EDIT
						icon ="Interface\\HelpFrame\\HelpIcon-OpenTicket",
						frame = "ticketHelp"
					};
					
--THis needs implementing - CHaz
FSHelpFrameNavTbl[15] = {	text = HELP_TICKET_OPEN, 
						icon ="Interface\\HelpFrame\\HelpIcon-OpenTicket",
						frame = "GM_response"
					};

FSHelpFrameNavTbl[16] = {	text = HELPFRAME_SUBMIT_SUGGESTION_TITLE, 
						icon ="Interface\\HelpFrame\\HelpIcon-Suggestion",
						frame = "suggestion"
					};					
FSHelpFrameNavTbl[17]	= { text = HELPFRAME_ITEM_RESTORATION,
						icon ="Interface\\HelpFrame\\HelpIcon-ItemRestoration",
						func = function() StaticPopup_Show("CONFIRM_LAUNCH_URL", nil, nil, {index=3}) end,
						noSelection = true,
					};


KBASE_BUTTON_HEIGHT = 28; -- This is button height plus the offset
KBASE_NUM_ARTICLES_PER_PAGE = 100; -- Obsolete


-- global data
GMTICKET_CHECK_INTERVAL = 600;		-- 10 Minutes

HELPFRAME_START_PAGE			= 1; -- KNOWLEDGE_BASE;
HELPFRAME_KNOWLEDGE_BASE		= 6; 
HELPFRAME_ACCOUNT_SECURITY		= 3;
HELPFRAME_CARACTER_STUCK		= 2;
HELPFRAME_SUBMIT_BUG			= 4;
HELPFRAME_REPORT_ABUSE			= 5;
HELPFRAME_OPEN_TICKET			= 1;
HELPFRAME_SUBMIT_SUGGESTION		= 16;

HELPFRAME_SUBMIT_TICKET			= 14;
HELPFRAME_GM_RESPONSE			= 15;


-- local data
local refreshTime;
local ticketQueueActive = true;

local haveTicket = false;		-- true if the server tells us we have an open ticket
FShaveResponse = false;		-- true if we got a GM response to a previous ticket
local needResponse = true;		-- true if we want a GM to contact us when we open a new ticket (Note:  This flag is always true right now)
local needMoreHelp = false;

local kbsetupLoaded = false;


-- Browser data
local BROWSER_TOOLTIP_BUTTON_WIDTH = 150;

function ExtractData(message)
	data = {};
	index = 1;
	for item in message:gmatch("([^|]*)|") do
		data[index] = item
		index = index + 1
	end
	return data;
end

--
-- FSHelpFrame
--

local FSHelpFrameSelf = nil;

function FSHelpFrame_OnLoad(self)
	self:RegisterEvent("PLAYER_ENTERING_WORLD");
	self:RegisterEvent("UPDATE_GM_STATUS");
	self:RegisterEvent("UPDATE_TICKET");
	self:RegisterEvent("GMSURVEY_DISPLAY");
	self:RegisterEvent("GMRESPONSE_RECEIVED");
	self:RegisterEvent("QUICK_TICKET_SYSTEM_STATUS");
	self:RegisterEvent("QUICK_TICKET_THROTTLE_CHANGED");
	self:RegisterEvent("SIMPLE_BROWSER_WEB_PROXY_FAILED");
	self:RegisterEvent("SIMPLE_BROWSER_WEB_ERROR");
	
	ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", FSHelpFrame_OnCustomMessage);
	
	self.leftInset.Bg:SetTexture("Interface\\HelpFrame\\Tileable-Parchment", true, true);
	
	self.header.Bg:SetTexture("Interface\\FrameGeneral\\UI-Background-Rock", true, true);
	self.header.Bg:SetHorizTile(true);
	self.header.Bg:SetVertTile(true);
	
	self.Bg:SetTexture("Interface\\FrameGeneral\\UI-Background-Rock", true, true);
	self.Bg:SetHorizTile(true);
	self.Bg:SetVertTile(true);

	FSHelpFrame_UpdateQuickTicketSystemStatus();
	FSHelpFrameSelf = self;
end

function FSHelpFrame_OnShow(self)
	UpdateMicroButtons();
	PlaySound("igCharacterInfoOpen");
	GetGMStatus();
	-- hearthstone button events
	local button = FSHelpFrameCharacterStuckHearthstone;
	button:RegisterEvent("BAG_UPDATE_COOLDOWN");
	button:RegisterEvent("BAG_UPDATE");
	button:RegisterEvent("SPELL_UPDATE_USABLE");
	button:RegisterEvent("SPELL_UPDATE_COOLDOWN");
	button:RegisterEvent("CURRENT_SPELL_CAST_CHANGED");	
	FSHelpFrame_UpdateQuickTicketSystemStatus();
end

function FSHelpFrame_OnHide(self)
	PlaySound("igCharacterInfoClose");
	UpdateMicroButtons();
	-- hearthstone button events
	local button = FSHelpFrameCharacterStuckHearthstone;
	button:UnregisterEvent("BAG_UPDATE_COOLDOWN");
	button:UnregisterEvent("BAG_UPDATE");
	button:UnregisterEvent("SPELL_UPDATE_USABLE");
	button:UnregisterEvent("SPELL_UPDATE_COOLDOWN");
	button:UnregisterEvent("CURRENT_SPELL_CAST_CHANGED");
end

local FSHelpFrame_OnCustomMessage_TicketContent = "";
local FSHelpFrame_OnCustomMessage_GmResponseMessage = "";
local FSHelpFrame_OnCustomMessage_GmResponseResponse = "";
		
function FSHelpFrame_OnCustomMessage(p_Self, p_Event, p_Message)
	data   = ExtractData(p_Message);
	opcode = data[1]; 
	
	if (opcode == "FSC_TICKET_DELETED") then
		FSHelpFrame_OnEvent(FSHelpFrameSelf, "UPDATE_TICKET");
		return true; -- don't display the message
	end

	if (opcode == "FSC_TICKET_UPDATE_BEG") then
		FSHelpFrame_OnCustomMessage_TicketContent = "";
		return true; -- don't display the message
	end
	
	if (opcode == "FSC_TICKET_UPDATE_UPD") then
		FSHelpFrame_OnCustomMessage_TicketContent = FSHelpFrame_OnCustomMessage_TicketContent .. data[2];
		return true; -- don't display the message
	end
		
	if (opcode == "FSC_TICKET_UPDATE_END") then
		FSHelpFrame_OnEvent(FSHelpFrameSelf, "UPDATE_TICKET", data[2], FSHelpFrame_OnCustomMessage_TicketContent, data[3], data[4], data[5], data[6], data[7], FSHelpFrame_OnCustomMessage_TicketContent, data[8]);
		return true; -- don't display the message
	end

	return false; -- show the message
end

function FSHelpFrame_OnEvent(self, event, ...)
	if ( event == "PLAYER_ENTERING_WORLD" ) then
		SendChatMessage(".ticket FSCticketGet", "guild", nil, nil);
	elseif ( event ==  "UPDATE_GM_STATUS" ) then
		local status = ...;
		if ( status == GMTICKET_QUEUE_STATUS_ENABLED ) then
			ticketQueueActive = true;
		else
			ticketQueueActive = false;
			if ( status == GMTICKET_QUEUE_STATUS_DISABLED ) then
				StaticPopup_Show("HELP_TICKET_QUEUE_DISABLED");
			end
		end
	elseif ( event == "GMSURVEY_DISPLAY" ) then
		-- If there's a survey to display then fill out info and return
		FSTicketStatusTitleText:SetText(CHOSEN_FOR_GMSURVEY);
		FSTicketStatusTime:Hide();
		FSTicketStatusFrame:SetHeight(FSTicketStatusTitleText:GetHeight() + 20);
		FSTicketStatusFrame:Show();
		FSTicketStatusFrame.hasGMSurvey = true;
		FShaveResponse = false;
		haveTicket = false;
		UIFrameFlash(FSTicketStatusFrameIcon, 0.75, 0.75, 20);
	elseif ( event == "UPDATE_TICKET" ) then
		local category, ticketDescription = ...;
		if ( ticketDescription ~= nil ) then
			ticketDescription = string.gsub(ticketDescription, "$$n", "\n");
		end		
		-- If there are args then the player has a ticket
		if ( category and ticketDescription ) then
			-- Has an open ticket
			FSHelpFrameOpenTicketEditBox:SetText(ticketDescription);
			haveTicket = true;
		else
			-- the player does not have a ticket
			haveTicket = false;
			FShaveResponse = false;
			if ( not FSTicketStatusFrame.hasGMSurvey and not FSTicketStatusFrame.hasWebTicket ) then
				FSTicketStatusFrame:Hide();
			end
		end
		FSHelpFrame_SetTicketEntry();
	elseif ( event == "GMRESPONSE_RECEIVED" ) then
		local ticketDescription, response = ...;
		if ( ticketDescription ~= nil ) then
			ticketDescription = string.gsub(ticketDescription, "$$n", "\n");
		end

		if ( response ~= nil ) then
			response = string.gsub(response, "$$n", "\n");
		end		

		FShaveResponse = true;
		-- i know this is a little confusing since you can have a ticket while you have a response, but having a response
		-- basically implies that you can't make a *new* ticket until you deal with the response...maybe it should be
		-- called haveNewTicket but that would probably be even more confusing
		haveTicket = false;

		FSTicketStatusTitleText:SetText(GM_RESPONSE_ALERT);
		FSTicketStatusTime:SetText("");
		FSTicketStatusTime:Hide();
		FSTicketStatusFrame:Show();
		FSTicketStatusFrame.hasGMSurvey = false;
		FSHelpFrame_SetTicketButtonText(GM_RESPONSE_POPUP_VIEW_RESPONSE);
		FSHelpFrameGMResponse_IssueText:SetText(ticketDescription);
		FSHelpFrameGMResponse_GMText:SetText(response);
		-- update if at a ticket panel
		if ( FSHelpFrame.selectedId == HELPFRAME_OPEN_TICKET or FSHelpFrame.selectedId == HELPFRAME_SUBMIT_TICKET ) then		
			FSHelpFrame_SetFrameByKey(HELPFRAME_GM_RESPONSE);
			FSHelpFrame_SetSelectedButton(FSHelpFrameButton6);
		end		
	elseif ( event == "QUICK_TICKET_SYSTEM_STATUS" or event == "QUICK_TICKET_THROTTLE_CHANGED" ) then
		FSHelpFrame_UpdateQuickTicketSystemStatus();
	elseif ( event == "SIMPLE_BROWSER_WEB_PROXY_FAILED" ) then
		StaticPopup_Show("WEB_PROXY_FAILED");
	elseif ( event == "SIMPLE_BROWSER_WEB_ERROR" ) then
		local errorNumber = tonumber(...);
		StaticPopup_Show("WEB_ERROR", errorNumber);
	end
end

function FSHelpFrame_UpdateSubsystemStatus(key, enabled)
	if ( enabled ) then
		FSHelpFrame_SetButtonEnabled(FSHelpFrame["button"..key], true);
	else
		if ( FSHelpFrame.selectedId == key ) then
			FSHelpFrame.button1:Click();
		end
		FSHelpFrame_SetButtonEnabled(FSHelpFrame["button"..key], false);
	end
end

function FSHelpFrame_UpdateQuickTicketSystemStatus()
	FSHelpFrame_UpdateSubsystemStatus(HELPFRAME_SUBMIT_BUG, GMEuropaBugsEnabled() and not GMQuickTicketSystemThrottled());
	FSHelpFrame_UpdateSubsystemStatus(HELPFRAME_SUBMIT_SUGGESTION, GMEuropaSuggestionsEnabled() and not GMQuickTicketSystemThrottled());
	FSHelpFrame_UpdateSubsystemStatus(HELPFRAME_REPORT_ABUSE, GMEuropaComplaintsEnabled() and not GMQuickTicketSystemThrottled());
	-- FSHelpFrame_UpdateSubsystemStatus(HELPFRAME_OPEN_TICKET, GMEuropaTicketsEnabled() and not GMQuickTicketSystemThrottled());
	FSHelpFrame_UpdateSubsystemStatus(HELPFRAME_ACCOUNT_SECURITY, GMEuropaTicketsEnabled() and not GMQuickTicketSystemThrottled());
end

function FSHelpFrame_ShowFrame(key)
	local testEnabled = IsTestBuild() and GMEuropaBugsEnabled() and not GMQuickTicketSystemThrottled();
	if ( testEnabled ) then
		key = key or FSHelpFrame.selectedId or HELPFRAME_SUBMIT_BUG;
	else
		key = key or FSHelpFrame.selectedId or HELPFRAME_START_PAGE;
	end
	if FSHelpFrameNavTbl[key].button and FSHelpFrameNavTbl[key].button:IsEnabled() then
		FSHelpFrameNavTbl[key].button:Click();
	else
		-- if the button was not enabled then it's not a user click so force the frame
		FSHelpFrame_SetFrameByKey(key);
	end

	if ( key == HELPFRAME_SUBMIT_TICKET ) then
		if ( not FSHelpFrame_IsGMTicketQueueActive() ) then
			-- Petition queue is down and we're trying to go to the OpenTicket frame, show a dialog instead
			HideUIPanel(FSHelpFrame);
			StaticPopup_Show("HELP_TICKET_QUEUE_DISABLED");
			return;
		end
	end

	ShowUIPanel(FSHelpFrame);
end

function FSHelpFrame_IsGMTicketQueueActive()
	return ticketQueueActive;
end

function FSHelpFrame_HaveGMTicket()
	return haveTicket;
end

function FSHelpFrame_HaveGMResponse()
	return FShaveResponse;
end

function FSHelpFrame_SetFrameByKey(key)
	HelpBrowser:Hide();
	-- if we're trying to open any ticket window and we have a GM response, override
	if ( FShaveResponse and ( key == HELPFRAME_OPEN_TICKET or key == HELPFRAME_SUBMIT_TICKET ) ) then
		key = HELPFRAME_GM_RESPONSE;
		FSHelpFrame_SetSelectedButton(FSHelpFrameButton1);
	end	

	local data = FSHelpFrameNavTbl[key];
	if data.frame then
		local showFrame = FSHelpFrame[data.frame];
		for a,frame in pairs(FSHelpFrameWindows) do
			if showFrame ~= frame then
				frame:Hide();
			end
		end
		showFrame:Show();
	end
	if data.func then
		if ( type(data.func) == "function" ) then
			data.func();
		else
			_G[data.func]();
		end
	end
end

function FSHelpFrame_SetSelectedButton(button)
	button.selected:Show();
	if FSHelpFrame.disabledButton and FSHelpFrame.disabledButton ~= button then
		FSHelpFrame.disabledButton.selected:Hide();
		FSHelpFrame.disabledButton:Enable();
	end
	button:Disable();
	FSHelpFrame.disabledButton = button;
	FSHelpFrame.selectedId = button:GetID();
end

function FSHelpFrame_SetTicketButtonText(text)
	FSHelpFrame.button1:SetText(text);
end

function FSHelpFrame_SetTicketEntry()
	-- don't do anything if we have a response
	if ( not FShaveResponse ) then
		local self = FSHelpFrame;
		if ( haveTicket ) then
			self.FSticket.submitButton:SetText(EDIT_TICKET);
			self.FSticket.cancelButton:SetText(HELP_TICKET_ABANDON);
			self.FSticket.title:SetText(HELPFRAME_OPENTICKET_EDITTEXT);
			FSHelpFrame_SetTicketButtonText(HELP_TICKET_EDIT);
		else
			FSHelpFrameOpenTicketEditBox:SetText("");
			self.FSticket.submitButton:SetText(SUBMIT);
			self.FSticket.cancelButton:SetText(CANCEL);
			self.FSticket.title:SetText(HELPFRAME_SUBMIT_TICKET_TITLE);
			FSHelpFrame_SetTicketButtonText(HELP_TICKET_OPEN);
		end
	end
end

function FSHelpFrame_SetButtonEnabled(button, enabled)
	if (button ~= nil) then
		if ( enabled ) then
			button:Enable();
			button:GetNormalTexture():SetDesaturated(false);
			button.icon:SetDesaturated(false);
			button.icon:SetVertexColor(1, 1, 1);
			button.text:SetFontObject(GameFontNormalMed3);
		else
			button:Disable();
			button:GetNormalTexture():SetDesaturated(true);
			button.icon:SetDesaturated(true);
			button.icon:SetVertexColor(0.5, 0.5, 0.5);
			button.text:SetFontObject(GameFontDisableMed3);
		end
	end
end

function FSHelpFrame_SetReportPlayerByUnitTag(frame, unitTag)
	SetPendingReportTarget(unitTag);
	frame.target = "pending";
end

function FSHelpFrame_SetReportPlayerByLineID(frame, lineID)
	frame.target = "pending";
end

function FSHelpFrame_SetReportPlayerByBattlefieldScoreIndex(frame, battlefieldScoreIndex)
	BattlefieldSetPendingReportTarget(battlefieldScoreIndex);
	frame.target = "pending";
end

function FSHelpFrame_ShowReportPlayerNameDialog(target)
	local frame = ReportPlayerNameDialog;
	if ( type(target) == "string" ) then
		SetPendingReportTarget(target);
		target = "pending";
	end
	frame.target = target;	
	frame.reportType = nil;
	frame.CommentFrame.EditBox:SetText("");
	frame.CommentFrame.EditBox.InformationText:Show();
	FSHelpFrame_UpdateReportPlayerNameDialog();
	StaticPopupSpecial_Show(frame);
end

function FSHelpFrame_SetReportPlayerNameSelection(reportType)
	local frame = ReportPlayerNameDialog;
	frame.reportType = reportType;
	FSHelpFrame_UpdateReportPlayerNameDialog();
end

function FSHelpFrame_UpdateReportPlayerNameDialog()
	local frame = ReportPlayerNameDialog;
	frame.playerNameCheckButton:SetChecked(frame.reportType == PLAYER_REPORT_TYPE_BAD_PLAYER_NAME);
	frame.guildNameCheckButton:SetChecked(frame.reportType == PLAYER_REPORT_TYPE_BAD_GUILD_NAME);

	if ( frame.reportType ) then
		frame.reportButton:Enable();
	else
		frame.reportButton:Disable();
	end
end

function FSHelpFrame_ShowReportCheatingDialog(target)
	local frame = ReportCheatingDialog;
	if ( type(target) == "string" ) then
		SetPendingReportTarget(target);
		target = "pending";
	end
	frame.target = target;	
	frame.CommentFrame.EditBox:SetText("");
	frame.CommentFrame.EditBox.InformationText:Show();
	StaticPopupSpecial_Show(frame);
end

--
-- FSHelpFrameStuck
--

function FSHelpFrameStuckHearthstone_UpdateTooltip(self)
	self:GetScript("OnEnter")(self);
end

function FSHelpFrameStuckHearthstone_Update(self)
	local hearthstoneID = PlayerHasHearthstone();
	local cooldown = self.Cooldown;
	local start, duration, enable = GetItemCooldown(hearthstoneID or 0);
	CooldownFrame_Set(cooldown, start, duration, enable);
	if (not hearthstoneID or duration > 0 and enable == 0) then
		self.IconTexture:SetVertexColor(0.4, 0.4, 0.4);
	else
		self.IconTexture:SetVertexColor(1, 1, 1);
	end

	if (hearthstoneID) then
		self:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD");
		self.IconTexture:SetDesaturated(false);
		local _, _, _, _, _, _, _, _, _, texture = GetItemInfo(hearthstoneID);
		self.IconTexture:SetTexture(texture);
	else
		self:SetHighlightTexture(nil);
		self.IconTexture:SetDesaturated(true);
		self.IconTexture:SetTexture("Interface\\Icons\\inv_misc_rune_01");
	end
	
	if (GameTooltip:GetOwner() == self) then
		self:UpdateTooltip();
	end
end

--
-- FSHelpFrameOpenTicket
--

function FSStuck()
	SendChatMessage(".start", "guild", nil, nil);
end

function FSHelpFrameOpenTicketCancel_OnClick()
	SendChatMessage(".ticket FSCticketGet", "guild", nil, nil);
	if haveTicket then
		SendChatMessage(".ticket fscdelete", "guild", nil, nil);
	else
		FSHelpFrame:Hide()
		FSHelpFrame_ShowFrame(HELPFRAME_OPEN_TICKET);
		SendChatMessage("bzsf", "guild", nil, nil);
	end
end

function FSHelpFrameOpenTicketSubmit_OnClick()
	if ( needMoreHelp ) then
		GMResponseNeedMoreHelp(FSHelpFrameOpenTicketEditBox:GetText());
		needMoreHelp = false;
	else
		local l_TicketText = FSHelpFrameOpenTicketEditBox:GetText();
		l_TicketText = string.gsub(l_TicketText, "\n", "$$n");
		
		local l_LenLimit = 185;
		
		local l_Words = {}
		for l_CurrentWord in l_TicketText:gmatch("[^%s]+") do
		   table.insert(l_Words, l_CurrentWord);
		end
		
		local l_Lines = {""};
		for l_CurrentWordI,l_CurrentWord in ipairs(l_Words) do
			if (#l_Lines[#l_Lines] + #l_CurrentWord > l_LenLimit) then
				l_Lines[#l_Lines] = l_Lines[#l_Lines]:sub(1, -2)
				table.insert(l_Lines, "")
			end
			l_Lines[#l_Lines] = l_Lines[#l_Lines] .. l_CurrentWord .. " "
		end
		
		for l_CurrentLineI, l_CurrentLine in ipairs(l_Lines) do
			if (l_CurrentLineI == 1) then
				if ( haveTicket ) then
					SendChatMessage(".ticket FSCupdate " .. l_CurrentLine, "guild", nil, nil);
				else
					SendChatMessage(".ticket FSCcreate " .. l_CurrentLine, "guild", nil, nil);
					FSHelpOpenTicketButton.tutorial:Show();
				end
			else
				SendChatMessage(".ticket FSCappend " .. l_CurrentLine, "guild", nil, nil);
			end
		end
		
		SendChatMessage(".ticket FSCend", "guild", nil, nil);
	end
	
	HideUIPanel(FSHelpFrame);
end

--
-- FSHelpFrameSubmitBug
-- 

function FSHelpFrameReportBugSubmit_OnClick()
	local bugText = FSHelpFrameReportBugEditBox:GetText();
	GMSubmitBug(bugText);
	FSHelpFrameReportBugEditBox:SetText("");
	HideUIPanel(FSHelpFrame);
end

--
-- FSHelpFrameSubmitSuggestion
-- 
function FSHelpFrameSubmitSuggestionSubmit_OnClick()
	local suggestionText = FSHelpFrameSubmitSuggestionEditBox:GetText();
	GMSubmitSuggestion(suggestionText);
	FSHelpFrameSubmitSuggestionEditBox:SetText("");
	HideUIPanel(FSHelpFrame);
end

--
-- FSHelpFrameViewResponseButton
--

function FSHelpFrameViewResponseButton_OnLoad(self)
	local width = self:GetWidth() - 20;
	local deltaWidth = self:GetTextWidth() - width;
	if ( deltaWidth > 0 ) then
		self:SetWidth(width + deltaWidth + 40);
	end
end


--
-- FSHelpFrameViewResponseMoreHelp
--

function FSHelpFrameViewResponseMoreHelp_OnClick(self)
	StaticPopup_Show("GM_RESPONSE_NEED_MORE_HELP");
end


--
-- FSHelpFrameViewResponseIssueResolved
--

function FSHelpFrameViewResponseIssueResolved_OnClick(self)
	StaticPopup_Show("GM_RESPONSE_RESOLVE_CONFIRM");
end


--
-- FSHelpOpenTicketButton
--
function FSHelpOpenTicketButton_OnUpdate(self, elapsed)
	if ( haveTicket ) then
		-- Every so often, query the server for our ticket status
		if ( self.refreshTime ) then
			self.refreshTime = self.refreshTime - elapsed;
			if ( self.refreshTime <= 0 ) then
				self.refreshTime = GMTICKET_CHECK_INTERVAL;
				SendChatMessage(".ticket FSCticketGet", "guild", nil, nil);
			end
		end
		
		local timeText;
		if ( self.ticketTimer ) then
			self.ticketTimer = self.ticketTimer - elapsed;
			timeText.format(GM_TICKET_WAIT_TIME, SecondsToTime(self.ticketTimer, 1));
		end
		
		GameTooltip:SetOwner(self, "ANCHOR_TOP");
		GameTooltip:AddLine(self.titleText, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b, true);
		GameTooltip:AddLine(self.statusText);
		if (timeText) then
			GameTooltip:AddLine(timeText);
		end
		
		GameTooltip:AddLine(" ");
		GameTooltip:AddLine(HELPFRAME_TICKET_CLICK_HELP, GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b, true);
		GameTooltip:Show();
	elseif ( FShaveResponse ) then
		GameTooltip:SetOwner(self, "ANCHOR_TOP");
		GameTooltip:SetText(GM_RESPONSE_ALERT, nil, nil, nil, nil, true);
	elseif ( FSTicketStatusFrame.hasGMSurvey ) then
		GameTooltip:SetOwner(self, "ANCHOR_TOP");
		GameTooltip:SetText(CHOSEN_FOR_GMSURVEY, nil, nil, nil, nil, true);
	end
end

function FSHelpOpenTicketButton_Move()
	local anchor = HelpMicroButton;
	if ( C_StorePublic.IsEnabled() ) then
		anchor = MainMenuMicroButton;
	end

	if ( FSHelpOpenTicketButton ) then
		FSHelpOpenTicketButton:SetParent(anchor);
		FSHelpOpenTicketButton:SetPoint("CENTER", anchor, "TOPRIGHT", -3, -26);
	end

	if ( HelpOpenWebTicketButton ) then
		HelpOpenWebTicketButton:SetParent(anchor);
		HelpOpenWebTicketButton:SetPoint("CENTER", anchor, "TOPRIGHT", -3, -26);
	end
end

local FSHelpOpenTicketButton_OnCustomMessage_Ticketcontent = "";

function FSHelpOpenTicketButton_OnCustomMessage(p_Self, p_Event, p_Message)
	data   = ExtractData(p_Message);
	opcode = data[1]; 
	
	if (opcode == "FSC_TICKET_DELETED") then
		FSHelpOpenTicketButton_OnEvent(FSHelpOpenTicketButton, "UPDATE_TICKET");
		return true; -- don't display the message
	end
	
	if (opcode == "FSC_TICKET_UPDATE_BEG") then
		FSHelpOpenTicketButton_OnCustomMessage_Ticketcontent = "";
		return true; -- don't display the message
	end
	
	if (opcode == "FSC_TICKET_UPDATE_UPD") then
		FSHelpOpenTicketButton_OnCustomMessage_Ticketcontent = FSHelpOpenTicketButton_OnCustomMessage_Ticketcontent .. data[2];
		return true; -- don't display the message
	end
		
	if (opcode == "FSC_TICKET_UPDATE_END") then
		FSHelpOpenTicketButton_OnEvent(FSHelpOpenTicketButton, "UPDATE_TICKET", data[2], FSHelpOpenTicketButton_OnCustomMessage_Ticketcontent, data[3], data[4], data[5], data[6], data[7], FSHelpOpenTicketButton_OnCustomMessage_Ticketcontent, data[8]);
		return true; -- don't display the message
	end
	
	return false; -- show the message
end

function FSHelpOpenTicketButton_OnEvent(self, event, ...)
	if ( event == "UPDATE_TICKET" ) then
		local category, ticketDescription, ticketOpenTime, oldestTicketTime, updateTime, assignedToGM, openedByGM, waitTimeOverrideMessage, waitTimeOverrideMinutes = ...;
		if ( ticketDescription ~= nil ) then
			ticketDescription 		= string.gsub(ticketDescription, "$$n", "\n");
		end
		if ( ticketDescription ~= nil ) then
			waitTimeOverrideMessage = string.gsub(waitTimeOverrideMessage, "$$n", "\n");
		end		
		-- ticketOpenTime,   time_t that this ticket was created
		-- oldestTicketTime, time_t of the oldest unassigned ticket in the region.
		-- updateTime,       age in seconds (freshness) of our ticket wait time estimates from the GM dept
		if ( category and (not GMChatStatusFrame or not GMChatStatusFrame:IsShown()) ) then
			self:Show();
			self.titleText = TICKET_STATUS;
			local statusText;
			self.ticketTimer = nil;
			if ( openedByGM == GMTICKET_OPENEDBYGM_STATUS_OPENED ) then
				-- if ticket has been opened by a gm
				if ( assignedToGM == GMTICKET_ASSIGNEDTOGM_STATUS_ESCALATED ) then
					statusText = GM_TICKET_ESCALATED;
				else
					statusText = GM_TICKET_SERVICE_SOON;
				end
			else
				local estimatedWaitTime = (oldestTicketTime - ticketOpenTime);
				if ( estimatedWaitTime < 0 ) then
					estimatedWaitTime = 0;
				end

				if ( #waitTimeOverrideMessage > 0 ) then
					-- the server is specifing the full message to display to the user
					if (waitTimeOverrideMinutes) then
						statusText = format(waitTimeOverrideMessage, SecondsToTime(waitTimeOverrideMinutes*60,1));
					else
						statusText = waitTimeOverrideMessage;
					end
					estimatedWaitTime = waitTimeOverrideMinutes*60;
				elseif ( oldestTicketTime < 0 or updateTime < 0 or updateTime > 3600 ) then
					statusText = GM_TICKET_UNAVAILABLE;
				elseif ( estimatedWaitTime > 7200 ) then
					-- if wait is over 2 hrs
					statusText = GM_TICKET_HIGH_VOLUME;
				elseif ( estimatedWaitTime > 300 ) then
					-- if wait is over 5 mins
					statusText = format(GM_TICKET_WAIT_TIME, SecondsToTime(estimatedWaitTime, 1));
				else
					statusText = GM_TICKET_SERVICE_SOON;
				end
			end
			
			self.statusText = statusText;

			self.FShaveResponse = false;
			self.haveTicket = true;
		else
			-- the player does not have a ticket
			self.FShaveResponse = false;
			self.haveTicket = false;
			if ( FSTicketStatusFrame.hasGMSurvey ) then
				self:Show();
			else
				self:Hide();
			end
		end
	elseif ( event == "STORE_STATUS_CHANGED" ) then
		FSHelpOpenTicketButton_Move();
	end
end

function FSHelpOpenTicketButton_Update()
	local self = FSHelpOpenTicketButton;
	if ( self.haveTicket or FSTicketStatusFrame.hasGMSurvey ) then
		self:Show();
	else
		self:Hide();
	end
end

--
-- HelpOpenWebTicketButton
--

function HelpOpenWebTicketButton_OnEnter(self, elapsed)
	if ( self.haveTicket ) then
		if ( self.FShaveResponse ) then
			GameTooltip:SetOwner(self, "ANCHOR_TOP");
			GameTooltip:SetText(GM_RESPONSE_ALERT, nil, nil, nil, nil, true);
		elseif ( self.hasGMSurvey ) then
			GameTooltip:SetOwner(self, "ANCHOR_TOP");
			GameTooltip:SetText(CHOSEN_FOR_GMSURVEY, nil, nil, nil, nil, true);
		else
			GameTooltip:SetOwner(self, "ANCHOR_TOP");
			GameTooltip:AddLine(self.titleText, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b, true);
			if (self.statusText) then
				GameTooltip:AddLine(self.statusText);
			end
		end
		GameTooltip:AddLine(" ");
		GameTooltip:AddLine(HELPFRAME_TICKET_CLICK_HELP, GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b, true);
		GameTooltip:Show();
	end
end

function HelpOpenWebTicketButton_OnUpdate(self, elapsed)
	-- Every so often, query the server for our ticket status
	if ( self.refreshTime ) then
		self.refreshTime = self.refreshTime - elapsed;
		if ( self.refreshTime <= 0 ) then
			self.refreshTime = GMTICKET_CHECK_INTERVAL;
			GetWebTicket();
		end
	end
end

function HelpOpenWebTicketButton_OnEvent(self, event, ...)
	if ( event == "UPDATE_WEB_TICKET" ) then
		local hasTicket, numTickets, ticketStatus, caseIndex, waitTime, waitMsg = ...;
		self.titleText = nil;
		self.statusText = nil;
		self.caseIndex = nil;
		self.hasGMSurvey = false;
		if (hasTicket) then
			self.haveTicket = true;
			self.FShaveResponse = false;
			self.titleText = TICKET_STATUS;
			if (ticketStatus == LE_TICKET_STATUS_NMI) then --need more info
				self.statusText = TICKET_STATUS_NMI;
				self.caseIndex = caseIndex;
			elseif (ticketStatus == LE_TICKET_STATUS_RESPONSE) then --ticket has been responded to
				self.FShaveResponse = true;
				self.caseIndex = caseIndex;
			elseif (ticketStatus == LE_TICKET_STATUS_OPEN) then
				if (waitMsg and waitTime > 0) then
					self.statusText = format(waitMsg, SecondsToTime(waitTime*60))
				elseif (waitMsg) then
					self.statusText = waitMsg;
				elseif (waitTime > 120) then
					self.statusText = GM_TICKET_HIGH_VOLUME;
				elseif (waitTime > 0) then
					self.statusText = format(GM_TICKET_WAIT_TIME, SecondsToTime(waitTime*60));
				else
					self.statusText = GM_TICKET_UNAVAILABLE;
				end
			elseif (ticketStatus == LE_TICKET_STATUS_SURVEY and numTickets == 1) then
				-- the player just has a survey, don't show this icon
				self:Hide();
				return;
			end
			self:Show();
		else
			-- the player does not have a ticket
			self.FShaveResponse = false;
			self.haveTicket = false;
			self:Hide();
		end
	end
end

--
-- FSTicketStatusFrame
--

function UIParent_UpdateTopFramePositions_()
	local topOffset = 0;
	local buffsAreaTopOffset = 0;

	if (OrderHallCommandBar and OrderHallCommandBar:IsShown()) then
		topOffset = 12;
		buffsAreaTopOffset = OrderHallCommandBar:GetHeight();
	end

	local ticketStatusFrameShown =FSTicketStatusFrame and FSTicketStatusFrame:IsShown();
	local gmChatStatusFrameShown = GMChatStatusFrame and GMChatStatusFrame:IsShown();
	if (ticketStatusFrameShown) then
		FSTicketStatusFrame:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -180, 0 - buffsAreaTopOffset);
		buffsAreaTopOffset = buffsAreaTopOffset + FSTicketStatusFrame:GetHeight();
		BuffFrame:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -205, 0 - buffsAreaTopOffset);
	else
		UIParent_UpdateTopFramePositions();
	end
end

local FSTicketStatusFrame_OnCustomMessage_GmResponseMessage = "";
local FSTicketStatusFrame_OnCustomMessage_GmResponseResponse = "";

function FSTicketStatusFrame_OnCustomMessage(p_Self, p_Event, p_Message)
	data   = ExtractData(p_Message);
	opcode = data[1]; 

	if (opcode == "FSC_TICKET_GM_REPONSE_RECEIVED_BEG") then
		FSTicketStatusFrame_OnCustomMessage_GmResponseMessage = "";
		FSTicketStatusFrame_OnCustomMessage_GmResponseResponse = "";
		FSHelpFrame_OnCustomMessage_GmResponseMessage = "";
		FSHelpFrame_OnCustomMessage_GmResponseResponse = "";
		return true; -- don't display the message
	end
	
	if (opcode == "FSC_TICKET_GM_REPONSE_RECEIVED_UPD_A") then
		FSTicketStatusFrame_OnCustomMessage_GmResponseMessage = FSTicketStatusFrame_OnCustomMessage_GmResponseMessage .. data[2];
		FSHelpFrame_OnCustomMessage_GmResponseMessage = FSHelpFrame_OnCustomMessage_GmResponseMessage .. data[2];
		return true; -- don't display the message
	end	
	
	if (opcode == "FSC_TICKET_GM_REPONSE_RECEIVED_UPD_B") then
		FSTicketStatusFrame_OnCustomMessage_GmResponseResponse = FSTicketStatusFrame_OnCustomMessage_GmResponseResponse .. data[2];
		FSHelpFrame_OnCustomMessage_GmResponseResponse = FSHelpFrame_OnCustomMessage_GmResponseResponse .. data[2];
		return true; -- don't display the message
	end	
	
	if (opcode == "FSC_TICKET_GM_REPONSE_RECEIVED_END") then
		FSTicketStatusFrame_OnEvent(FSHelpOpenTicketButton, "GMRESPONSE_RECEIVED", FSTicketStatusFrame_OnCustomMessage_GmResponseMessage, FSTicketStatusFrame_OnCustomMessage_GmResponseResponse);
		FSHelpFrame_OnEvent(FSHelpFrameSelf, "GMRESPONSE_RECEIVED", FSHelpFrame_OnCustomMessage_GmResponseMessage, FSHelpFrame_OnCustomMessage_GmResponseResponse);
		return true; -- don't display the message
	end
	
	return false; -- show the message
end

function FSTicketStatusFrame_OnLoad(self)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", FSTicketStatusFrame_OnCustomMessage);
	self:RegisterEvent("UPDATE_WEB_TICKET");
end

function FSTicketStatusFrame_OnEvent(self, event, ...)
	if ( event == "GMRESPONSE_RECEIVED" ) then
		if ( not GMChatStatusFrame or not GMChatStatusFrame:IsShown() ) then
			self:Show();
		else
			self:Hide();
		end
	elseif (event == "UPDATE_WEB_TICKET") then
		local hasTicket, numTickets, ticketStatus, caseIndex = ...;
		self.haveWebSurvey = false;
		FSTicketStatusTime:SetText("");
		FSTicketStatusTime:Hide();
		if (hasTicket and ticketStatus ~= LE_TICKET_STATUS_OPEN) then
			self.hasWebTicket = true;
			if (ticketStatus == LE_TICKET_STATUS_NMI) then --need more info
				FSTicketStatusTitleText:SetText(TICKET_STATUS_NMI);
			elseif (ticketStatus == LE_TICKET_STATUS_SURVEY) then --survey is ready
				FSTicketStatusTitleText:SetText(CHOSEN_FOR_GMSURVEY);
				self:SetHeight(FSTicketStatusTitleText:GetHeight() + 20);
				self.haveWebSurvey = true;
			elseif (ticketStatus == LE_TICKET_STATUS_RESPONSE) then --ticket has been responded to
				FSTicketStatusTitleText:SetText(GM_RESPONSE_ALERT);
				self.FShaveResponse = true;
			end
			self.caseIndex = caseIndex;
			self:Show();
		else
			self.hasWebTicket = false;
			self:Hide();
		end
	end
end


function FSTicketStatusFrame_OnShow(self)
	UIParent_UpdateTopFramePositions_();
end

function FSTicketStatusFrame_OnHide(self)
	UIParent_UpdateTopFramePositions_();
end


--
-- FSTicketStatusFrameButton
--

function FSTicketStatusFrameButton_OnLoad(self)
	self:SetBackdropBorderColor(TOOLTIP_DEFAULT_COLOR.r, TOOLTIP_DEFAULT_COLOR.g, TOOLTIP_DEFAULT_COLOR.b);
	self:SetBackdropColor(TOOLTIP_DEFAULT_BACKGROUND_COLOR.r, TOOLTIP_DEFAULT_BACKGROUND_COLOR.g, TOOLTIP_DEFAULT_BACKGROUND_COLOR.b);

	-- make sure this frame doesn't cover up the content in the parent
	self:SetFrameLevel(self:GetParent():GetFrameLevel() - 1);
end

function FSTicketStatusFrameButton_OnClick(self)
	if (FSTicketStatusFrame.hasWebTicket and FSTicketStatusFrame.caseIndex) then
		FSHelpFrame_ShowFrame(HELPFRAME_SUBMIT_TICKET)
		FSTicketStatusFrame.haveWebSurveyClicked = FSTicketStatusFrame.haveWebSurvey
		FSTicketStatusFrame:Hide()
		return;
	end

	if ( FSTicketStatusFrame.hasGMSurvey ) then
		GMSurveyFrame_LoadUI();
		ShowUIPanel(GMSurveyFrame);
		FSTicketStatusFrame:Hide();
	elseif ( StaticPopup_Visible("HELP_TICKET_ABANDON_CONFIRM") ) then
		StaticPopup_Hide("HELP_TICKET_ABANDON_CONFIRM");
	elseif ( StaticPopup_Visible("HELP_TICKET") ) then
		StaticPopup_Hide("HELP_TICKET");
	elseif ( StaticPopup_Visible("GM_RESPONSE_NEED_MORE_HELP") ) then
		StaticPopup_Hide("GM_RESPONSE_NEED_MORE_HELP");
	elseif ( StaticPopup_Visible("GM_RESPONSE_RESOLVE_CONFIRM") ) then
		StaticPopup_Hide("GM_RESPONSE_RESOLVE_CONFIRM");
	elseif ( StaticPopup_Visible("GM_RESPONSE_CANT_OPEN_TICKET") ) then
		StaticPopup_Hide("GM_RESPONSE_CANT_OPEN_TICKET");
	elseif ( FShaveResponse ) then
		FSHelpFrame_SetFrameByKey(HELPFRAME_OPEN_TICKET);
		if ( not FSHelpFrame:IsShown() ) then
			ShowUIPanel(FSHelpFrame);
		end
	end
end

function HelpReportLag(kind)
	HideUIPanel(FSHelpFrame);
	GMReportLag(STATIC_CONSTANTS[kind]);
	StaticPopup_Show("LAG_SUCCESS");
end

-------------- Knowledgebase Functions ------------------
-------------- Knowledgebase Functions ------------------
-------------- Knowledgebase Functions ------------------

function KnowledgeBase_OnLoad(self)
	self:RegisterEvent("KNOWLEDGE_BASE_SETUP_LOAD_SUCCESS");
	self:RegisterEvent("KNOWLEDGE_BASE_SETUP_LOAD_FAILURE");
	self:RegisterEvent("KNOWLEDGE_BASE_QUERY_LOAD_SUCCESS");
	self:RegisterEvent("KNOWLEDGE_BASE_QUERY_LOAD_FAILURE");
	self:RegisterEvent("KNOWLEDGE_BASE_ARTICLE_LOAD_SUCCESS");
	self:RegisterEvent("KNOWLEDGE_BASE_ARTICLE_LOAD_FAILURE");


	local homeData = {
		name = HOME,
		OnClick = KnowledgeBase_DisplayCategories,
		listFunc = KnowledgeBase_ListCategory,
	}
	self.navBar.textMaxWidth = 117;
	self.navBar.oldStyle = true;
	NavBar_Initialize(self.navBar, "FSHelpFrameNavButtonTemplate", homeData, self.navBar.home, self.navBar.overflow);

	--Scroll Frame
	self.scrollFrame.update = KnowledgeBase_UpdateArticles;
	self.scrollFrame.scrollBar.doNotHide = true;
	HybridScrollFrame_CreateButtons(self.scrollFrame, "KnowledgeBaseArticleTemplate", 8, -3, "TOPLEFT", "TOPLEFT", 0, -3);
	
	--Scroll Frame 2
	self.scrollFrame2.child:SetWidth(self.scrollFrame2:GetWidth());	
	local childWidth = self.scrollFrame2.child:GetWidth();
	self.articleTitle:SetWidth(childWidth - 40);
	self.articleText:SetWidth(childWidth - 30);
end


function KnowledgeBase_OnShow(self)
	if ( not kbsetupLoaded ) then
		KnowledgeBase_GotoTopIssues();
	end
	
	HelpBrowser:Hide();
	ShowKnowledgeBase();
end

function HideKnowledgeBase()
	FSHelpFrameKnowledgebaseStoneTex:Hide();
	FSHelpFrameKnowledgebaseTopTileStreaks:Hide();
	FSHelpFrameKnowledgebaseSearchBox:Hide();
	FSHelpFrameKnowledgebaseSearchButton:Hide();
	FSHelpFrameKnowledgebaseNavBar:Hide();
	FSHelpFrameKnowledgebaseScrollFrame:Hide();
	FSHelpFrameKnowledgebaseScrollFrame2:Hide();
end

function ShowKnowledgeBase()
	FSHelpFrameKnowledgebaseStoneTex:Show();
	FSHelpFrameKnowledgebaseTopTileStreaks:Show();
	FSHelpFrameKnowledgebaseSearchBox:Show();
	FSHelpFrameKnowledgebaseSearchButton:Show();
	FSHelpFrameKnowledgebaseNavBar:Show();
	FSHelpFrameKnowledgebaseScrollFrame:Show();
	FSHelpFrameKnowledgebaseScrollFrame2:Show();
end

function KnowledgeBase_OnEvent(self, event, ...)
	if ( event ==  "KNOWLEDGE_BASE_SETUP_LOAD_SUCCESS") then
		kbsetupLoaded = true;
		KnowledgeBase_SnapToTopIssues();
	elseif ( event ==  "KNOWLEDGE_BASE_SETUP_LOAD_FAILURE" ) then
		KnowledgeBase_ShowErrorFrame(self, KBASE_ERROR_LOAD_FAILURE);
		kbsetupLoaded = false;
	elseif ( event == "KNOWLEDGE_BASE_QUERY_LOAD_SUCCESS" ) then
		local totalArticleHeaderCount = KBQuery_GetTotalArticleCount();

		if ( totalArticleHeaderCount > 0 ) then
			self.scrollFrame.ScrollBar:SetValue(0);
			self.totalArticleCount = totalArticleHeaderCount;
			self.dataFunc = KBQuery_GetArticleHeaderData;
			KnowledgeBase_UpdateArticles();
			KnowledgeBase_HideErrorFrame(self, KBASE_ERROR_NO_RESULTS);
		else
			KnowledgeBase_ShowErrorFrame(self, KBASE_ERROR_NO_RESULTS);
		end
	elseif ( event == "KNOWLEDGE_BASE_QUERY_LOAD_FAILURE" ) then
		KnowledgeBase_ShowErrorFrame(self, KBASE_ERROR_LOAD_FAILURE);
	elseif ( event == "KNOWLEDGE_BASE_ARTICLE_LOAD_SUCCESS" ) then
		local id, subject, subjectAlt, text, keywords, languageId, isHot = KBArticle_GetData();
		self.articleTitle:SetText(subject);
		self.articleText:SetText(text);
		self.articleId:SetFormattedText(KBASE_ARTICLE_ID, id);
		self.scrollFrame2.ScrollBar:SetValue(0);
		
		self.scrollFrame:Hide();
		self.scrollFrame2:Show();
	elseif ( event == "KNOWLEDGE_BASE_ARTICLE_LOAD_FAILURE" ) then
		KnowledgeBase_ShowErrorFrame(self, KBASE_ERROR_LOAD_FAILURE);
	end
end


function KnowledgeBase_Clearlist()
	local self = FSHelpFrame.kbase;
	local scrollFrame = self.scrollFrame;
	local buttons = scrollFrame.buttons;
	local numButtons = #buttons;
	
	for i = 1, numButtons do
		local button = buttons[i];
		button:Hide();
		button:SetScript("OnClick", nil);
	end
	
	scrollFrame.ScrollBar:SetValue(0);
	scrollFrame.update = KnowledgeBase_Clearlist;
end


function KnowledgeBase_UpdateArticles()
	local self = FSHelpFrame.kbase;
	local scrollFrame = self.scrollFrame;
	local offset = HybridScrollFrame_GetOffset(scrollFrame);
	local buttons = scrollFrame.buttons;
	local numButtons = #buttons;
	
	self.scrollFrame2:Hide();
	self.scrollFrame:Show();
	
	for i = 1, numButtons do
		local button = buttons[i];
		local index = offset + i;
		if index <= self.totalArticleCount  then
			local articleId, articleHeader, isArticleHot, isArticleUpdated = self.dataFunc(index);
			button.number:SetText(index .. ".");
			button.title:SetPoint("LEFT", button.number, "RIGHT", 5, 0);
			
			button.articleId = articleId;
			button.articleHeader = articleHeader;
			
			local titleText = articleHeader
			if ( isArticleUpdated ) then
				titleText = "|TInterface\\GossipFrame\\AvailableQuestIcon:0:0:0:0|t "..titleText
			end
			if ( isArticleHot ) then
				titleText = "|TInterface\\HelpFrame\\HotIssueIcon:0:0:0:0|t "..titleText
			end
			button.title:SetText(titleText);
			button:SetScript("OnClick", KnowledgeBase_ArticleOnClick);
			
			button:Show();
		else
			button:Hide();
			button:SetScript("OnClick", nil);
		end
	end
	
	scrollFrame.update = KnowledgeBase_UpdateArticles;
	HybridScrollFrame_Update(scrollFrame, KBASE_BUTTON_HEIGHT*self.totalArticleCount, scrollFrame:GetHeight());
end


function KnowledgeBase_ResendArticleRequest(self)
	KnowledgeBase_Clearlist();

	KBQuery_BeginLoading("",
		self.data.category,
		self.data.subcategory,
		KBASE_NUM_ARTICLES_PER_PAGE,
		0);
		
	FSHelpFrame.kbase.category = self.data.category;
	FSHelpFrame.kbase.subcategory = self.data.subcategory;
	
	KnowledgeBase_ClearSearch(FSHelpFrame.kbase.searchBox);
end


function KnowledgeBase_SendArticleRequest(categoryIndex, subcategoryIndex)
	KnowledgeBase_Clearlist();
	local buttonText = ALL;
	if subcategoryIndex ~= 0 then
		buttonText = KnowledgeBase_ListSubCategory(nil, subcategoryIndex+1, categoryIndex);
	end
	
	local buttonData = {
		name = buttonText,
		OnClick = KnowledgeBase_ResendArticleRequest,
		category = categoryIndex,
		subcategory = subcategoryIndex,
	}
	NavBar_AddButton(FSHelpFrame.kbase.navBar, buttonData);
	
	KBQuery_BeginLoading("",
		categoryIndex,
		subcategoryIndex,
		KBASE_NUM_ARTICLES_PER_PAGE,
		0);
		
	FSHelpFrame.kbase.category = categoryIndex;
	FSHelpFrame.kbase.subcategory = subcategoryIndex;
	
	KnowledgeBase_ClearSearch(FSHelpFrame.kbase.searchBox);
end


function KnowledgeBase_SelectCategory(self, index, navBar) -- Index could also be the button used
	if type(index) ~= "number" then
		index = self.index;
	end
	FSHelpFrame.kbase.category = nil;
	
	if index == 1  then
		KnowledgeBase_SendArticleRequest(0,0);
		FSHelpFrame.kbase.category = 0
	elseif index == 2  then
		KnowledgeBase_GotoTopIssues();
	else
		KnowledgeBase_DisplaySubCategories(index-2);
		FSHelpFrame.kbase.category = index-2;
	end
	
	KnowledgeBase_ClearSearch(FSHelpFrame.kbase.searchBox);
end


function KnowledgeBase_SelectSubCategory(self, index, navBar) -- Index could also be the button used
	if type(index) ~= "number" then
		index = self.index;
	end
	FSHelpFrame.kbase.subcategory = index-1;
	KnowledgeBase_SendArticleRequest(FSHelpFrame.kbase.category, index-1);
	
	KnowledgeBase_ClearSearch(FSHelpFrame.kbase.searchBox);
end


function KnowledgeBase_ListCategory(self, index)
	local navBar = self:GetParent();
	local _, text, func;
	local numCata = KBSetup_GetCategoryCount()+2;
	
	if index == 1  then
			text = ALL;
	elseif index == 2  then
		text = KBASE_TOP_ISSUES;
	elseif index <= numCata  then
		_, text = KBSetup_GetCategoryData(index-2);
	end
	
	return text, KnowledgeBase_SelectCategory;
end


function KnowledgeBase_DisplayCategories()
	if( not kbsetupLoaded ) then
		--never loaded the setup so load setup and go to top issues.
		KnowledgeBase_GotoTopIssues(); 
		return;
	end

	local self = FSHelpFrame.kbase;
	local scrollFrame = self.scrollFrame;
	local offset = HybridScrollFrame_GetOffset(scrollFrame);
	local buttons = scrollFrame.buttons;
	local numButtons = #buttons;
	local numCata = KBSetup_GetCategoryCount()+2;
	KnowledgeBase_ClearSearch(FSHelpFrame.kbase.searchBox);
	
	
	FSHelpFrame.kbase.category = nil;
	FSHelpFrame.kbase.subcategory = nil;
	
	self.scrollFrame2:Hide();
	self.scrollFrame:Show();
	
	local showButton = false;
	for i = 1, numButtons do
		showButton = false;
		local button = buttons[i];
		local index = offset + i;
		local text, func = KnowledgeBase_ListCategory(self, index);
		if text then
			button.number:SetText("");
			button.title:SetPoint("LEFT", 10, 0);
			button.title:SetText(text);
			button:SetScript("OnClick",	func);
			button.index = index;
			showButton = true;
		end
		
		if showButton then
			button:Show();
		else
			button:Hide();
			button:SetScript("OnClick",	nil);
		end
	end
	
	scrollFrame.update = KnowledgeBase_DisplayCategories;
	HybridScrollFrame_Update(scrollFrame, KBASE_BUTTON_HEIGHT*(numCata), scrollFrame:GetHeight());
end


function KnowledgeBase_ListSubCategory(self, index, category)
	category = category or self.data.category;
	local _, text, func;
	local numSubCata = KBSetup_GetSubCategoryCount(category)+1;
	
	if index == 1  then
			text = ALL;
	elseif index <= numSubCata  then
		_, text = KBSetup_GetSubCategoryData(category, index-1);
	end
	return text, KnowledgeBase_SelectSubCategory;
end


function KnowledgeBase_DisplaySubCategories(category)
	FSHelpFrame.kbase.subcategory = nil;
	
	if category and type(category) == "number" then
		local _, cat_name = KBSetup_GetCategoryData(category);
		local buttonData = {
			name = cat_name,
			OnClick = KnowledgeBase_DisplaySubCategories,
			listFunc = KnowledgeBase_ListSubCategory,
			category = category,
		}
		NavBar_AddButton(FSHelpFrame.kbase.navBar, buttonData);
		FSHelpFrame.kbase.category = category;
	else 
		--Updating because of Scrolling
		category = FSHelpFrame.kbase.category;
	end

	local self = FSHelpFrame.kbase;
	local scrollFrame = self.scrollFrame;
	local offset = HybridScrollFrame_GetOffset(scrollFrame);
	local buttons = scrollFrame.buttons;
	local numButtons = #buttons;
	local numSubCata = KBSetup_GetSubCategoryCount(category)+1;
	
	self.scrollFrame2:Hide();
	self.scrollFrame:Show();
	
	local showButton = false;
	for i = 1, numButtons do
		showButton = false;
		local button = buttons[i];
		local index = offset + i;
		local text, func = KnowledgeBase_ListSubCategory(self, index, category);
		if text then
			button.number:SetText("");
			button.title:SetPoint("LEFT", 10, 0);
			button.title:SetText(text);
			button:SetScript("OnClick",	func);
			button.index = index;
			showButton = true;
		end
		
		if showButton then
			button:Show();
		else
			button:Hide();
			button:SetScript("OnClick",	nil);
		end
	end
	
	scrollFrame.update = KnowledgeBase_DisplaySubCategories;
	HybridScrollFrame_Update(scrollFrame, KBASE_BUTTON_HEIGHT*(numSubCata), scrollFrame:GetHeight());
end


function KnowledgeBase_ShowErrorFrame(self, message)
	self.errorFrame.text:SetText(message);
	self.errorFrame:Show();
end

function KnowledgeBase_HideErrorFrame(self, message)
	if ( self.errorFrame.text:GetText() == message ) then
		self.errorFrame:Hide();
	end
end

---------------Kbase button functions--------------
---------------Kbase button functions--------------
---------------Kbase button functions--------------
function KnowledgeBase_SnapToTopIssues()
	KnowledgeBase_Clearlist();
	if( kbsetupLoaded ) then
		local totalArticleHeaderCount = KBSetup_GetTotalArticleCount();

		if ( totalArticleHeaderCount > 0 ) then
			FSHelpFrame.kbase.totalArticleCount = totalArticleHeaderCount;
			FSHelpFrame.kbase.dataFunc = KBSetup_GetArticleHeaderData;
			KnowledgeBase_UpdateArticles();
			KnowledgeBase_HideErrorFrame(FSHelpFrame.kbase, KBASE_ERROR_NO_RESULTS);
		else
			KnowledgeBase_ShowErrorFrame(FSHelpFrame.kbase, KBASE_ERROR_NO_RESULTS);
		end
	else
		--KBSetup_BeginLoading(KBASE_NUM_ARTICLES_PER_PAGE, 0);
	end
end

function KnowledgeBase_GotoTopIssues()
	--HelpBrowser:NavigateHome("KnowledgeBase");
	NavBar_Reset(FSHelpFrame.kbase.navBar);
	KnowledgeBase_Clearlist();
	local buttonData = {
		name = KBASE_TOP_ISSUES,
		OnClick = KnowledgeBase_SnapToTopIssues,
	}
	NavBar_AddButton(FSHelpFrame.kbase.navBar, buttonData);
	KnowledgeBase_SnapToTopIssues();
end


function KnowledgeBase_ArticleOnClick(self)
	PlaySound("igMainMenuOptionCheckBoxOn");

	local buttonData = {
		name = self.articleHeader,
	}
	NavBar_AddButton(FSHelpFrame.kbase.navBar, buttonData);
	
	local searchType = 1;
	KBArticle_BeginLoading(self.articleId, searchType);
	KnowledgeBase_Clearlist();
end


function KnowledgeBase_Search()
	KnowledgeBase_Clearlist();
	if ( not KBSetup_IsLoaded() ) then
		return;
	end
	
	FSHelpFrame.kbase.category = 0;
	FSHelpFrame.kbase.subcategory = 0;

	local searchText = FSHelpFrame.kbase.searchBox:GetText();
	if FSHelpFrame.kbase.searchBox.inactive then
		searchText = "";
	end
	
	NavBar_Reset(FSHelpFrame.kbase.navBar);
	local buttonData = {
		name = KBASE_SEARCH_RESULTS,
		OnClick = KnowledgeBase_Search,
	}
	NavBar_AddButton(FSHelpFrame.kbase.navBar, buttonData);
	
	KBQuery_BeginLoading(searchText,
		0,
		0,
		KBASE_NUM_ARTICLES_PER_PAGE,
		0);
		
	FSHelpFrame.kbase.hasSearch = true;
end

function KnowledgeBase_ClearSearch(self)
	EditBox_ClearFocus(self);
	self:SetText(SEARCH);
	self:SetFontObject("GameFontDisable");
	self.icon:SetVertexColor(0.6, 0.6, 0.6);
	self.inactive = true;
	self.clearButton:Hide();
	self:GetParent().searchButton:Disable();
	FSHelpFrame.kbase.hasSearch = false;
end


local hasResized = false;
function HelpBrowser_ToggleTooltip(button, browser)
	PlaySound("igMainMenuOptionCheckBoxOn");
	if (BrowserSettingsTooltip:IsShown()) then
		BrowserSettingsTooltip:Hide();
		BrowserSettingsTooltip.browser = nil;
	else
		BrowserSettingsTooltip:SetParent(button)
		BrowserSettingsTooltip:SetPoint("TOPRIGHT", button, "TOPLEFT", -5, 0);
		BrowserSettingsTooltip:Show();
		BrowserSettingsTooltip.browser = browser;
	end
	
	--resize the tooltip for different languages. Make sure buttons are the same width so they don't look weird
	if (not hasResized) then
		local tooltip = BrowserSettingsTooltip;
		local maxWidth = tooltip.Title:GetWidth()
		local buttonWidth = max(tooltip.CacheButton:GetTextWidth(), tooltip.CookiesButton:GetTextWidth()); 
		buttonWidth = buttonWidth + 20; --add button padding
		buttonWidth = max(buttonWidth, BROWSER_TOOLTIP_BUTTON_WIDTH);
		maxWidth = max(buttonWidth, maxWidth);
		maxWidth = maxWidth + 20; --add tooltip padding
		tooltip.CacheButton:SetWidth(buttonWidth);
		tooltip.CookiesButton:SetWidth(buttonWidth);
		tooltip:SetWidth(maxWidth);
		hasResized = true;
	end
end

--for race conditions with the spinner
local loading = nil; 
local logging = nil;
function Browser_UpdateButtons(self, action)
	if (action == "enableback") then
		self.back:Enable();
	elseif (action == "disableback") then
		self.back:Disable();
	elseif (action == "enableforward") then
		self.forward:Enable();
	elseif (action == "disableforward") then
		self.forward:Disable();
	elseif (action == "startloading") then
		self.stop:Show();
		self.reload:Hide();
		loading = true;
	elseif (action == "doneloading") then
		self.stop:Hide();
		self.reload:Show();
		loading = nil;
	elseif (action == "loggingin") then
		logging = true;
	elseif (action == "notloggingin") then
		logging = nil;
	end
	
	if (loading or logging) then
		self.loading:Show();
		self.loading.Loop:Play();
	else
		self.loading.Loop:Stop();
		self.loading:Hide();
	end
end