local t = Def.ActorFrame {
	InitCommand=cmd(fov,90),
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE01/1.txt"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;blend,'BlendMode_Add';cullmode,'CullMode_Back';zoomx,34;zoomy,34;zoomz,44;rotationy,WideScale(-33.3,-35);x,WideScale(130,150);rotationx,WideScale(13.6,10.2);rotationz,18;y,170);
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE01/1.txt"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;blend,'BlendMode_Add';cullmode,'CullMode_Front';zoomx,34;zoomy,34;zoomz,44;rotationy,WideScale(-33.3,-35);x,WideScale(130,150);rotationx,WideScale(13.6,10.2);rotationz,18;y,170);
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE01/i.txt"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;blend,'BlendMode_Add';cullmode,'CullMode_Back';zoomx,34;zoomy,34;zoomz,34;rotationy,WideScale(-33.4,-35.05);x,WideScale(130,150);rotationx,WideScale(13.55,10.23);rotationz,18;y,170);
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE01/site_ring.png"))..{
		OnCommand=cmd(blend,'BlendMode_Add';zoom,0.6;x,WideScale(270,285);y,WideScale(215,205);rotationy,-20;zoom,0;linear,.2;zoom,.6;spin;effectmagnitude,0,0,200;);
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE01/hud2.png"))..{
		OnCommand=cmd(blend,'BlendMode_Add';zoom,0.3;x,WideScale(280,295);y,WideScale(215,205);rotationy,-20;zoom,0;linear,.2;zoom,.3;spin;effectmagnitude,0,0,200;spin;effectmagnitude,0,0,-200;);
	};
};
return t;