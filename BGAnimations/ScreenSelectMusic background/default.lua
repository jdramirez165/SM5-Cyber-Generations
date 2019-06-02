local t = Def.ActorFrame{
	FOV=90;
	LoadActor( THEME:GetPathB("ScreenWithMenuElements","background"))..{
	};
	LoadActor("_Download")..{
		InitCommand=cmd();
		OnCommand=cmd(texcoordvelocity,0.05,0;blend,'BlendMode_Add';x,SCREEN_CENTER_X;y,SCREEN_TOP+320;diffusealpha,0.6;zoom,0.89;); 
	};
	LoadActor("_01")..{
		InitCommand=cmd(y,SCREEN_CENTER_Y;diffusealpha,0.9;zoom,0.89;);
		OnCommand=cmd(blend,'BlendMode_Add';spin;effectmagnitude,0,0,15;);
	};
	LoadActor("_02")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+430;y,SCREEN_CENTER_Y;diffusealpha,0.9;zoom,0.89;);
		OnCommand=cmd(blend,'BlendMode_Add';spin;effectmagnitude,0,0,15;);
	};
};

return t;