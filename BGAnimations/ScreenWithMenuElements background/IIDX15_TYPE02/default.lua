local t = Def.ActorFrame {
	InitCommand=cmd(fov,120;addy,100),
	LoadActor("box.txt")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-200;zoom,300;rotationx,70;addz,90);
	};
	LoadActor("gate.txt")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-100;zoom,300;rotationx,70;addz,-180);
	};
};
return t;