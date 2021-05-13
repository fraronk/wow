local E, L, V, P, G = unpack(select(2, ...)); --Import: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local UF = E:GetModule('UnitFrames');

function UF:Construct_ResurrectionIcon(frame)
	local tex = frame.RaisedElementParent.TextureParent:CreateTexture(nil, 'OVERLAY')
	tex:SetPoint('CENTER', frame.Health, 'CENTER')
	tex:SetSize(30, 30)
	tex:SetDrawLayer('OVERLAY', 7)

	return tex
end

function UF:Configure_ResurrectionIcon(frame)
	local RI = frame.ResurrectIndicator
	local db = frame.db

	if db.resurrectIcon.enable then
		frame:EnableElement('ResurrectIndicator')
		RI:Show()
		RI:SetSize(db.resurrectIcon.size, db.resurrectIcon.size)

		local attachPoint = self:GetObjectAnchorPoint(frame, db.resurrectIcon.attachToObject)
		RI:ClearAllPoints()
		RI:SetPoint(db.resurrectIcon.attachTo, attachPoint, db.resurrectIcon.attachTo, db.resurrectIcon.xOffset, db.resurrectIcon.yOffset)
	else
		frame:DisableElement('ResurrectIndicator')
		RI:Hide()
	end
end
