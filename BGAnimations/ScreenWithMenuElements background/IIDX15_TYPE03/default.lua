local t = Def.ActorFrame {
	LoadActor("_alloww1.lua")..{
	};
	-- [Layer1]
	LoadActor("TITLE_BG1")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(texcoordvelocity,0.5,0;zoomy,0.1;linear,1.8;zoomy,0.5;linear,0.1;zoomy,1.2;linear,0.1;zoomy,1;);
	};
	-- [Layer2]
	LoadActor("TITLE_BG2")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';zoomy,0.1;linear,1.8;zoomy,0.5;texcoordvelocity,-.5,0;linear,0.1;zoomy,1.2;linear,0.1;zoomy,1;);
	};	
	-- [Layer3]
	LoadActor("TITLE_BG3")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';zoomy,0.1;linear,1.8;zoomy,0.5;texcoordvelocity,0.5,0;diffusealpha,0.5);
	};	
	-- [Layer4]
	Def.Quad{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT;diffuse,color("#000000"));
		OnCommand=cmd(diffusealpha,0;sleep,2;diffusealpha,1);
	};	
	-- [Layer5]
	LoadActor("TITLE_BG1")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(texcoordvelocity,0.1,0;zoomy,0.1;diffusealpha,0;sleep,1.8;diffusealpha,1;zoomy,0.5;linear,0.1;zoomy,1.2;linear,0.1;zoomy,1;);
	};	
	-- [Layer6]
	LoadActor("TITLE_BG2")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';texcoordvelocity,-0.1,0;zoomy,0.1;diffusealpha,0;sleep,1.8;diffusealpha,0.5;zoomy,0.5;linear,0.1;zoomy,1.2;linear,0.1;zoomy,1);
	};	
	-- [Layer7]
	LoadActor("TITLE_BG4")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';texcoordvelocity,-0.1,0;zoomy,0.1;diffusealpha,0;sleep,1.8;diffusealpha,0.8;zoomy,0.5;linear,0.1;zoomy,1.2;linear,0.1;zoomy,1;sleep,0;);
	};	
	-- [Layer8]
	LoadActor("TITLE_BG3")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';texcoordvelocity,0.12,0;zoomy,0.1;diffusealpha,0;sleep,1.8;diffusealpha,0.7;zoomy,0.5;linear,0.1;zoomy,1.2;linear,0.1;zoomy,1);
	};	
	
	-- [Layer11]
	LoadActor("SITE")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';zoom,1.5;diffusealpha,0;;sleep,0.6;linear,0.2;diffusealpha,0.8;zoom,1);
	};
	-- [Layer20]
	LoadActor("FLARE.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-236;y,SCREEN_CENTER_Y+28);
		OnCommand=cmd(blend,'BlendMode_Add';zoom,0.5;diffusealpha,0;sleep,1.1;diffusealpha,1;sleep,0.05;diffusealpha,0);
	};
	-- [Layer21]
	LoadActor("P_SHOCK.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-236;y,SCREEN_CENTER_Y+28);
		OnCommand=cmd(blend,'BlendMode_Add';zoom,0.4;diffusealpha,0;sleep,1.1;diffusealpha,1;linear,0.15;zoom,1.6;diffusealpha,0);
	};
	-- [Layer22]
	LoadActor("FLARE.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-139;y,SCREEN_CENTER_Y-81);
		OnCommand=cmd(blend,'BlendMode_Add';zoom,0.5;diffusealpha,0;sleep,1.1;diffusealpha,1;sleep,0.05;diffusealpha,0);
	};
	-- [Layer23]
	LoadActor("P_SHOCK.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-139;y,SCREEN_CENTER_Y-81);
		OnCommand=cmd(blend,'BlendMode_Add';diffusealpha,0;sleep,1.1;diffusealpha,1;linear,0.15;zoom,1.6;diffusealpha,0);
	};
	-- [Layer24]
	LoadActor("FLARE.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+80;y,SCREEN_CENTER_Y+84);
		OnCommand=cmd(blend,'BlendMode_Add';zoom,0.5;diffusealpha,0;sleep,1.1;diffusealpha,1;sleep,0.05;diffusealpha,0);
	};
	-- [Layer25]
	LoadActor("P_SHOCK.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+80;y,SCREEN_CENTER_Y+84);
		OnCommand=cmd(blend,'BlendMode_Add';diffusealpha,0;sleep,1.1;diffusealpha,1;linear,0.15;zoom,1.6;diffusealpha,0);
	};
	-- [Layer26]
	LoadActor("FLARE.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+226;y,SCREEN_CENTER_Y+20);
		OnCommand=cmd(blend,'BlendMode_Add';zoom,0.5;diffusealpha,0;sleep,1.1;diffusealpha,1;sleep,0.05;diffusealpha,0);
	};
	-- [Layer27]
	LoadActor("P_SHOCK.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+226;y,SCREEN_CENTER_Y+20);
		OnCommand=cmd(blend,'BlendMode_Add';diffusealpha,0;sleep,1.1;diffusealpha,1;linear,0.15;zoom,1.6;diffusealpha,0);
	};
	-- [Layer28]
	LoadActor("P_SHOCK.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';zoom,0.4;diffusealpha,0;sleep,1.1;diffusealpha,1;linear,0.15;zoom,1.6;diffusealpha,0);
	};
	-- [Layer30]
	Def.Sprite {
		Texture="HIBANA 3x4.png";
			Frame0000=0;
			Delay0000=0.01;
			Frame0001=1;
			Delay0001=0.01;
			Frame0002=2;
			Delay0002=0.01;
			Frame0003=3;
			Delay0003=0.01;
			Frame0004=4;
			Delay0004=0.01;
			Frame0005=5;
			Delay0005=0.01;
			Frame0006=6;
			Delay0006=0.01;
			Frame0007=7;
			Delay0007=0.01;
			Frame0008=8;
			Delay0008=0.01;
			Frame0009=9;
			Delay0009=0.01;
			Frame0010=10;
			Delay0010=0.01;
			Frame0011=11;
			Delay0011=0.01;
		InitCommand=cmd(x,SCREEN_CENTER_X-236;y,SCREEN_CENTER_Y-82);
		OnCommand=cmd(blend,'BlendMode_Add';linear,0.23;x,SCREEN_CENTER_X-108;linear,0.02;x,SCREEN_CENTER_X-99;y,SCREEN_CENTER_Y-74;linear,0.03;x,SCREEN_CENTER_X-69;linear,0.02;x,SCREEN_CENTER_X-61;y,SCREEN_CENTER_Y-82;linear,0.05;x,SCREEN_CENTER_X-36;linear,0.02;x,SCREEN_CENTER_X-26;y,SCREEN_CENTER_Y-74;linear,0.09;x,SCREEN_CENTER_X+33;linear,0.02;x,SCREEN_CENTER_X+41;y,SCREEN_CENTER_Y-82;linear,0.31;x,SCREEN_CENTER_X+228;sleep,0.05;diffusealpha,0);
	};
	-- [Layer32]
	Def.Sprite {
		Texture="HIBANA 3x4.png";
			Frame0000=0;
			Delay0000=0.01;
			Frame0001=1;
			Delay0001=0.01;
			Frame0002=2;
			Delay0002=0.01;
			Frame0003=3;
			Delay0003=0.01;
			Frame0004=4;
			Delay0004=0.01;
			Frame0005=5;
			Delay0005=0.01;
			Frame0006=6;
			Delay0006=0.01;
			Frame0007=7;
			Delay0007=0.01;
			Frame0008=8;
			Delay0008=0.01;
			Frame0009=9;
			Delay0009=0.01;
			Frame0010=10;
			Delay0010=0.01;
			Frame0011=11;
			Delay0011=0.01;
		InitCommand=cmd(x,SCREEN_CENTER_X-237;y,SCREEN_CENTER_Y+29);
		OnCommand=cmd(blend,'BlendMode_Add';linear,0.09;x,SCREEN_CENTER_X-196;y,SCREEN_CENTER_Y+84;linear,0.42;x,SCREEN_CENTER_X+64;y,SCREEN_CENTER_Y+84;linear,0.05;x,SCREEN_CENTER_X+90;y,SCREEN_CENTER_Y+50;linear,0.02;x,SCREEN_CENTER_X+95;y,SCREEN_CENTER_Y+84;linear,0.18;x,SCREEN_CENTER_X+206;y,SCREEN_CENTER_Y+84;linear,0.03;x,SCREEN_CENTER_X+228;y,SCREEN_CENTER_Y+66;sleep,0.05;diffusealpha,0);
	};
	-- [Layer34]
	LoadActor("SPARK_EF2.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+228;y,SCREEN_CENTER_Y+76;horizalign,left);
		OnCommand=cmd(blend,'BlendMode_Add';zoom,0.4;diffusealpha,0;sleep,0.79;diffusealpha,1;linear,0.1;zoom,1;linear,0.1;zoom,1.2;diffusealpha,0);
	};
	-- [Layer36]
	LoadActor("SPARK_EF3.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+228;y,SCREEN_CENTER_Y-92;horizalign,left);
		OnCommand=cmd(blend,'BlendMode_Add';zoom,0.4;diffusealpha,0;sleep,0.79;diffusealpha,1;linear,0.1;zoom,1;linear,0.1;zoom,1.2;diffusealpha,0);
	};
	-- [Layer39]
	Def.Quad{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT;diffuse,color("#000000"));
		OnCommand=cmd(diffusealpha,0;sleep,2.2;diffusealpha,1);
	};
	-- [Layer40]
	LoadActor("TITLE_BG1.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(texcoordvelocity,0.1,0;diffusealpha,0;sleep,2;diffusealpha,1;);
	};
	-- [Layer41]
	LoadActor("TITLE_BG4.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';texcoordvelocity,-.1,0;diffusealpha,0;;sleep,2;diffusealpha,1;);
	};
	-- [Layer42]
	LoadActor("TITLE_BG3.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';texcoordvelocity,0.12,0;diffusealpha,0;sleep,2;diffusealpha,1;);
	};
	-- [Layer43]
	LoadActor("SITE.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';diffusealpha,0;sleep,2;diffusealpha,0.8;);
	};
	-- [Layer55]
	Def.Sprite {
		Texture="HIBANA 3x4.png";
			Frame0000=0;
			Delay0000=0.01;
			Frame0001=1;
			Delay0001=0.01;
			Frame0002=2;
			Delay0002=0.01;
			Frame0003=3;
			Delay0003=0.01;
			Frame0004=4;
			Delay0004=0.01;
			Frame0005=5;
			Delay0005=0.01;
			Frame0006=6;
			Delay0006=0.01;
			Frame0007=7;
			Delay0007=0.01;
			Frame0008=8;
			Delay0008=0.01;
			Frame0009=9;
			Delay0009=0.01;
			Frame0010=10;
			Delay0010=0.01;
			Frame0011=11;
			Delay0011=0.01;
		InitCommand=cmd(x,SCREEN_CENTER_X-236;y,SCREEN_CENTER_Y-117);
		OnCommand=cmd(diffusealpha,1;playcommand,"Animate");
		AnimateCommand=cmd(blend,'BlendMode_Add';x,SCREEN_CENTER_X-236;y,SCREEN_CENTER_Y-117;diffusealpha,0;sleep,3.2;diffusealpha,1;linear,0.23;x,SCREEN_CENTER_X-108;linear,0.02;x,SCREEN_CENTER_X-99;y,SCREEN_CENTER_Y-109;linear,0.03;x,SCREEN_CENTER_X-69;linear,0.02;x,SCREEN_CENTER_X-61;y,SCREEN_CENTER_Y-117;linear,0.05;x,SCREEN_CENTER_X-36;linear,0.02;x,SCREEN_CENTER_X-26;y,SCREEN_CENTER_Y-109;linear,0.09;x,SCREEN_CENTER_X+33;linear,0.02;x,SCREEN_CENTER_X+41;y,SCREEN_CENTER_Y-117;linear,0.31;x,SCREEN_CENTER_X+228;sleep,0.05;diffusealpha,0;sleep,.96;queuecommand,"Animate");
	};
	-- [Layer56]
	Def.Sprite {
		Texture="HIBANA 3x4.png";
			Frame0000=0;
			Delay0000=0.01;
			Frame0001=1;
			Delay0001=0.01;
			Frame0002=2;
			Delay0002=0.01;
			Frame0003=3;
			Delay0003=0.01;
			Frame0004=4;
			Delay0004=0.01;
			Frame0005=5;
			Delay0005=0.01;
			Frame0006=6;
			Delay0006=0.01;
			Frame0007=7;
			Delay0007=0.01;
			Frame0008=8;
			Delay0008=0.01;
			Frame0009=9;
			Delay0009=0.01;
			Frame0010=10;
			Delay0010=0.01;
			Frame0011=11;
			Delay0011=0.01;
		InitCommand=cmd(x,SCREEN_CENTER_X-236;y,SCREEN_CENTER_Y-6);
		OnCommand=cmd(diffusealpha,1;playcommand,"Animate");
		AnimateCommand=cmd(blend,'BlendMode_Add';x,SCREEN_CENTER_X-236;y,SCREEN_CENTER_Y-6;diffusealpha,0;sleep,3.2;diffusealpha,1;linear,0.09;x,SCREEN_CENTER_X-196;y,SCREEN_CENTER_Y+49;linear,0.42;x,SCREEN_CENTER_X+64;y,SCREEN_CENTER_Y+49;linear,0.05;x,SCREEN_CENTER_X+90;y,SCREEN_CENTER_Y+15;linear,0.02;x,SCREEN_CENTER_X+95;y,SCREEN_CENTER_Y+49;linear,0.18;x,SCREEN_CENTER_X+206;y,SCREEN_CENTER_Y+49;linear,0.03;x,SCREEN_CENTER_X+228;y,SCREEN_CENTER_Y+31;sleep,0.05;diffusealpha,0;sleep,.96;queuecommand,"Animate");
	};
	-- [Layer57]
	LoadActor("SPARK_EF2.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+228;y,SCREEN_CENTER_Y+41;horizalign,left);
		OnCommand=cmd(diffusealpha,0;playcommand,"Animate");
		AnimateCommand=cmd(blend,'BlendMode_Add';zoom,0.4;diffusealpha,0;sleep,3.99;diffusealpha,1;linear,0.1;zoom,1;linear,0.1;zoom,1.2;diffusealpha,0;sleep,.81;queuecommand,"Animate");
	};
	-- [Layer59]
	LoadActor("SPARK_EF3.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+228;y,SCREEN_CENTER_Y-127;horizalign,left;rotationz,-20);
		OnCommand=cmd(diffusealpha,0;playcommand,"Animate");
		AnimateCommand=cmd(blend,'BlendMode_Add';zoom,0.4;horizalign,left;diffusealpha,0;sleep,3.99;diffusealpha,1;linear,0.1;zoom,1;linear,0.1;zoom,1.2;diffusealpha,0;sleep,.81;queuecommand,"Animate");
	};
	-- [Layer72]
	LoadActor("logo.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-35);
		OnCommand=cmd(diffusealpha,0;sleep,1.7;diffusealpha,0;playcommand,"Animate");
		AnimateCommand=cmd(diffusealpha,1;sleep,1.2;linear,0.2;diffusealpha,0;sleep,1.5;linear,0.3;diffusealpha,1;sleep,1.8;queuecommand,"Animate");
	};
	-- [Layer100]
	Def.Quad{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT;diffuse,color("#ffffff"));
		OnCommand=cmd(diffusealpha,1;linear,0.2;diffusealpha,0);
	};
};
return t