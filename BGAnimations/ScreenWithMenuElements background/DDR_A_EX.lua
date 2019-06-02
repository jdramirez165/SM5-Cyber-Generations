local t = Def.ActorFrame {};
local tcol="_bl";

t[#t+1] = Def.ActorFrame {
  FOV=90;
  InitCommand=cmd(Center);
	LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/DDR_A_EX/Main_BG"))..{
		InitCommand=cmd(scaletoclipped,SCREEN_WIDTH+1,SCREEN_HEIGHT);
	};
};

return t;
