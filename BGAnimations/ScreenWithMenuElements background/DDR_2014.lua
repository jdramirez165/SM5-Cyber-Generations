return Def.ActorFrame{

	--Background Colored 1p vs2p ------------------------------------------
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/DDR_2014/Background_ddr2013.png"))..{
		InitCommand=cmd(zoom,1;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(playcommand,"Animate");
		AnimateCommand=cmd(rotationz,0;linear,60;rotationz,360;queuecommand,"Animate");

	};
	-- BACKGROUND ROTATION EFFECTS ---------------------------------------------------
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/DDR_2014/Effectbg_ddr2013.png"))..{
		InitCommand=cmd(zoom,1;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0.3);
		OnCommand=cmd(spin;effectmagnitude,0,0,10);
		
		
	
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/DDR_2014/Effectbg_ddr2013.png"))..{
		InitCommand=cmd(blend,'BlendMode_Add';zoom,0.9;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0.5);
		--SPIN;effectmagnitude,x,y,z
		OnCommand=cmd(spin;effectmagnitude,0,0,15);
		
	
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/DDR_2014/Effectbg_ddr2013.png"))..{
		InitCommand=cmd(rotationz,90;zoom,1.3;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0.3);
		OnCommand=cmd(spin;effectmagnitude,0,0,-5);
	
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/DDR_2014/Overlay.png"))..{
		InitCommand=cmd(FullScreen);
	};
};