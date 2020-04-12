message('ckr - Loaded')

function EnterCombat(self, event, ...)
	if event == 'PLAYER_REGEN_DISABLED' then
		-- Combat
		SetBinding("A","STRAFELEFT");
		SetBinding("D","STRAFERIGHT");
	elseif event == 'PLAYER_REGEN_ENABLED' then
		-- Not Combat
		SetBinding("A","TURNLEFT");
		SetBinding("D","TURNRIGHT");
	end
end

local frame = CreateFrame("Frame") 
frame:SetScript("OnEvent", EnterCombat)
frame:RegisterEvent("PLAYER_REGEN_ENABLED")
frame:RegisterEvent("PLAYER_REGEN_DISABLED")
