local t = Def.ActorFrame {
	-- [Layer1]
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE03/TITLE_BG1"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(texcoordvelocity,0.5,0;zoomy,0.1;linear,1.8;zoomy,0.5;linear,0.1;zoomy,1.2;linear,0.1;zoomy,1;);
	};
	-- [Layer2]
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE03/TITLE_BG2"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';zoomy,0.1;linear,1.8;zoomy,0.5;texcoordvelocity,-.5,0;linear,0.1;zoomy,1.2;linear,0.1;zoomy,1;);
	};	
	-- [Layer3]
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE03/TITLE_BG3"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';zoomy,0.1;linear,1.8;zoomy,0.5;texcoordvelocity,0.5,0;diffusealpha,0.5);
	};	
	-- [Layer4]
	Def.Quad{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT;diffuse,color("#000000"));
		OnCommand=cmd(diffusealpha,0;sleep,2;diffusealpha,1);
	};	
	-- [Layer5]
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE03/TITLE_BG1"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(texcoordvelocity,0.1,0;zoomy,0.1;diffusealpha,0;sleep,1.8;diffusealpha,1;zoomy,0.5;linear,0.1;zoomy,1.2;linear,0.1;zoomy,1;);
	};	
	-- [Layer6]
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE03/TITLE_BG2"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';texcoordvelocity,-0.1,0;zoomy,0.1;diffusealpha,0;sleep,1.8;diffusealpha,0.5;zoomy,0.5;linear,0.1;zoomy,1.2;linear,0.1;zoomy,1);
	};	
	-- [Layer7]
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE03/TITLE_BG4"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';texcoordvelocity,-0.1,0;zoomy,0.1;diffusealpha,0;sleep,1.8;diffusealpha,0.8;zoomy,0.5;linear,0.1;zoomy,1.2;linear,0.1;zoomy,1;sleep,0;);
	};	
	-- [Layer8]
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE03/TITLE_BG3"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';texcoordvelocity,0.12,0;zoomy,0.1;diffusealpha,0;sleep,1.8;diffusealpha,0.7;zoomy,0.5;linear,0.1;zoomy,1.2;linear,0.1;zoomy,1);
	};	
	
	-- [Layer11]
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE03/SITE"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';zoom,1.5;diffusealpha,0;;sleep,0.6;linear,0.2;diffusealpha,0.8;zoom,1);
	};
	-- [Layer20]
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE03/FLARE.png"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X-236;y,SCREEN_CENTER_Y+28);
		OnCommand=cmd(blend,'BlendMode_Add';zoom,0.5;diffusealpha,0;sleep,1.1;diffusealpha,1;sleep,0.05;diffusealpha,0);
	};
	-- [Layer22]
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE03/FLARE.png"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X-139;y,SCREEN_CENTER_Y-81);
		OnCommand=cmd(blend,'BlendMode_Add';zoom,0.5;diffusealpha,0;sleep,1.1;diffusealpha,1;sleep,0.05;diffusealpha,0);
	};
	-- [Layer24]
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE03/FLARE.png"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X+80;y,SCREEN_CENTER_Y+84);
		OnCommand=cmd(blend,'BlendMode_Add';zoom,0.5;diffusealpha,0;sleep,1.1;diffusealpha,1;sleep,0.05;diffusealpha,0);
	};
	-- [Layer26]
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE03/FLARE.png"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X+226;y,SCREEN_CENTER_Y+20);
		OnCommand=cmd(blend,'BlendMode_Add';zoom,0.5;diffusealpha,0;sleep,1.1;diffusealpha,1;sleep,0.05;diffusealpha,0);
	};
	-- [Layer39]
	Def.Quad{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT;diffuse,color("#000000"));
		OnCommand=cmd(diffusealpha,0;sleep,2.2;diffusealpha,1);
	};
	-- [Layer40]
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE03/TITLE_BG1.png"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(texcoordvelocity,0.1,0;diffusealpha,0;sleep,2;diffusealpha,1;);
	};
	-- [Layer41]
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE03/TITLE_BG4.png"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';texcoordvelocity,-.1,0;diffusealpha,0;;sleep,2;diffusealpha,1;);
	};
	-- [Layer42]
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE03/TITLE_BG3.png"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';texcoordvelocity,0.12,0;diffusealpha,0;sleep,2;diffusealpha,1;);
	};
	-- [Layer43]
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/IIDX15_TYPE03/SITE.png"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';diffusealpha,0;sleep,2;diffusealpha,0.8;);
	};
	-- [Layer100]
	Def.Quad{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT;diffuse,color("#ffffff"));
		OnCommand=cmd(diffusealpha,1;linear,0.2;diffusealpha,0);
	};
};
return t