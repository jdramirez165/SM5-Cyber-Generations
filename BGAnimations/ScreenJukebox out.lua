return Def.ActorFrame{
	Def.Quad{
		InitCommand=cmd(FullScreen;diffuse,color("255,255,255,0"));
		OnCommand=cmd(accelerate,0.5;diffusealpha,1);
	};
};