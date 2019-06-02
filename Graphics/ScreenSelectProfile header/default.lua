local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor("_Base_new") .. {
		InitCommand=cmd(zoom,0.89;vertalign,top;horizalign,right;x,SCREEN_CENTER_X;y,SCREEN_TOP;);
		OnCommand=cmd(diffusealpha,0;sleep,0.9;smooth,0.3;diffusealpha,1);
		OffCommand=cmd(decelerate,0.3;diffusealpha,0;blend,'BlendMode_Add');
	};	
	LoadActor("_0_new") .. {
		InitCommand=cmd(zoom,0.79;vertalign,top;horizalign,right;x,SCREEN_CENTER_X-804;y,SCREEN_TOP+82;);
		OnCommand=cmd(diffusealpha,0;sleep,0.0;smooth,0.3;diffusealpha,1;blend,'BlendMode_Add');
		OffCommand=cmd(decelerate,0.3;diffusealpha,0;blend,'BlendMode_Add');
	};	
};

return t