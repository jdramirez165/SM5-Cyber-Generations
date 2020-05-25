local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
  FOV=90;
	LoadActor("Background") .. {
		InitCommand=cmd(zoom,0.49;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(texcoordvelocity,-0.02,0.02);
	};
		LoadActor("Center") .. {
		InitCommand=cmd(zoom,0.49;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(texcoordvelocity,0,0);
	};
		LoadActor("Rings") .. {
		InitCommand=cmd(zoom,0.49;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(texcoordvelocity,0.0,0;spin;effectmagnitude,0,0,8;);
	};
};

return t;
