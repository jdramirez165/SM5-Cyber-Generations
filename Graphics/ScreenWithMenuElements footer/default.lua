local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor("_footer") .. {
		InitCommand=cmd(zoom,0.89;vertalign,top;horizalign,right;x,SCREEN_CENTER_X;y,SCREEN_TOP-56;);
		OnCommand=cmd(diffusealpha,0;sleep,0.4;smooth,0.3;diffusealpha,1;);
		OffCommand=cmd(decelerate,0.3;diffusealpha,0;);
	};	
};

return t