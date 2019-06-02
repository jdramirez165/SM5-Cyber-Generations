return Def.ActorFrame{
	Def.Quad{
		InitCommand=cmd(FullScreen;diffuse,color("255,255,255,1"));
		OnCommand=cmd(decelerate,0.5;diffusealpha,0);
	};
};