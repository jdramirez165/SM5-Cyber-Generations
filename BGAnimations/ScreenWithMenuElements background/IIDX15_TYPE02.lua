local t = Def.ActorFrame {
	InitCommand=cmd(fov,120;addy,100),
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE02/box.txt"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-200;zoom,300;rotationx,70;addz,90);
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE02/gate.txt"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-100;zoom,300;rotationx,70;addz,-180);
	};
};
return t;