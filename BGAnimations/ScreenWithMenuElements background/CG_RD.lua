local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
  FOV=90;
	LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/CG_RD/_background"))..{
		InitCommand=cmd(FullScreen,SCREEN_WIDTH,SCREEN_HEIGHT);
		OnCommand=cmd(blend,'BlendMode_Add');
	};
	Def.Quad {
		InitCommand=cmd(zoomto,SCREEN_WIDTH+1,SCREEN_HEIGHT);
		OnCommand=cmd(diffuse,color("0,0,0,0.25"));
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/CG_RD/_stars"))..{
		InitCommand=cmd(zoom,0.89;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(texcoordvelocity,0.01,0;blend,'BlendMode_Add');
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/CG_RD/Spotlight1"))..{
		InitCommand=cmd(zoom,0.89;x,SCREEN_CENTER_X+98;y,SCREEN_CENTER_Y+199;valign,1,00;halign,0,01;wag;effectmagnitude,0,0,-27;effectperiod,8);
		OnCommand=cmd(texcoordvelocity,0.0,0;blend,'BlendMode_Add');
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/CG_RD/Spotlight2"))..{
		InitCommand=cmd(zoom,0.89;x,SCREEN_CENTER_X+109;y,SCREEN_CENTER_Y+199;valign,1,00;halign,1,00;wag;effectmagnitude,0,0,19;effectperiod,5);
		OnCommand=cmd(texcoordvelocity,0.0,0;blend,'BlendMode_Add');
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/CG_RD/Spotlight3"))..{
		InitCommand=cmd(zoom,0.89;x,SCREEN_CENTER_X+114;y,SCREEN_CENTER_Y+199;valign,1,00;halign,0,05;wag;effectmagnitude,0,0,25;effectperiod,10);
		OnCommand=cmd(texcoordvelocity,0.0,0;blend,'BlendMode_Add');
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/CG_RD/_city"))..{
		InitCommand=cmd(zoom,0.69;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+195);
		OnCommand=cmd(texcoordvelocity,0.02,0);
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/CG_RD/_code"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X-335;y,SCREEN_CENTER_Y);
		OnCommand=cmd(texcoordvelocity,0,0.05;blend,'BlendMode_Add');
	};
};

return t;
