return Def.ActorFrame {
	InitCommand=cmd(sleep,0.6);
	
	LoadActor(THEME:GetPathS("Common","JukeboxStop")) .. {
		StartTransitioningCommand=cmd(play);
	};
	Def.Quad{
		BeginCommand=cmd(FullScreen);
		OnCommand=cmd(diffuse,color("0,0,0,0");sleep,0.95;linear,0.05;diffuse,color("0,0,0,1"););
	};

}