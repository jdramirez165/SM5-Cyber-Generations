local t = Def.ActorFrame{
	InitCommand=function(self)
		if GAMESTATE:GetCurrentGame():GetName() == "beat" or GAMESTATE:GetCurrentGame():GetName() == "pump" then
			PREFSMAN:SetPreference("AllowW1","AllowW1_Never");
			PREFSMAN:SetPreference("Center1Player",false);
		end;
		if GAMESTATE:GetCurrentGame():GetName() == "dance" then
			PREFSMAN:SetPreference("AllowW1","AllowW1_Everywhere");
			PREFSMAN:SetPreference("Center1Player",false);
		end;
		if GAMESTATE:GetCurrentGame():GetName() == "kb7" then
			PREFSMAN:SetPreference("AllowW1","AllowW1_Everywhere");
			PREFSMAN:SetPreference("Center1Player",true);
		end;
	end;
};
return t