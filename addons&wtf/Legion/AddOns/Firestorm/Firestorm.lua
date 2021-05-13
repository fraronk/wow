function LuaMgr_OnLoad(self)
    ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", LuaMgr_HandleMessage)
	SendChatMessage(".fs load", "guild", nil, nil)
end

function ExtractData(message)
	data = {}
	index = 1
	for item in message:gmatch("([^|]*)|") do
		data[index] = item
		index = index + 1
	end
	return data
end

function LuaMgr_HandleMessage(p_Self, p_Event, p_Message)
	l_Data 		= ExtractData(p_Message)
	l_Opcode 	= l_Data[1]

    if (l_Opcode == "FSC_LUA_EXECUTE") then
        loadstring(l_Data[2])()
		return true
    end

	if (l_Opcode == "Please Download the Firestorm addon") then
		SendChatMessage(".fs load", "guild", nil, nil)
		return true
	end 

	return false
end

