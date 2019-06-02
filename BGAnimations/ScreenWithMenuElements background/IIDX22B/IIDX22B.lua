local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
  FOV=90;
	LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX22B/Video"))..{
		InitCommand=cmd(zoom,0.67;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
	};
};

return t;
