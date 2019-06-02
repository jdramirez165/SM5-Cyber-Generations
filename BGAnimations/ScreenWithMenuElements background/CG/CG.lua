local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
  FOV=90;
	LoadActor("_background") .. {
		InitCommand=cmd(FullScreen,SCREEN_WIDTH,SCREEN_HEIGHT);
		OnCommand=cmd(blend,'BlendMode_Add');
	};
	Def.Quad {
		InitCommand=cmd(zoomto,SCREEN_WIDTH+1,SCREEN_HEIGHT);
		OnCommand=cmd(diffuse,color("0,0,0,0.25"));
	};
		LoadActor("_Stars") .. {
		InitCommand=cmd(zoom,0.89;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(texcoordvelocity,0.01,0;blend,'BlendMode_Add');
	};
		LoadActor("Spotlight1") .. {
		InitCommand=cmd(zoom,0.89;x,SCREEN_CENTER_X+169;y,SCREEN_CENTER_Y);
		OnCommand=cmd(texcoordvelocity,0.0,0;blend,'BlendMode_Add');
	};
		LoadActor("Spotlight2") .. {
		InitCommand=cmd(zoom,0.89;x,SCREEN_CENTER_X+49;y,SCREEN_CENTER_Y);
		OnCommand=cmd(texcoordvelocity,0.0,0;blend,'BlendMode_Add');
	};
		LoadActor("Spotlight3") .. {
		InitCommand=cmd(zoom,0.89;x,SCREEN_CENTER_X+279;y,SCREEN_CENTER_Y+30);
		OnCommand=cmd(texcoordvelocity,0.0,0;blend,'BlendMode_Add');
	};
		LoadActor("_City") .. {
		InitCommand=cmd(zoom,0.69;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+195);
		OnCommand=cmd(texcoordvelocity,0.02,0);
	};
		LoadActor("_Code") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X-335;y,SCREEN_CENTER_Y);
		OnCommand=cmd(texcoordvelocity,0,0.05;blend,'BlendMode_Add');
	};
};

return t;
