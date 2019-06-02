local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
  FOV=90;
     Def.Quad {
		InitCommand=cmd(FullScreen;diffuse,color("1,1,1,1"););
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/CGSS/bg_anim_icon"))..{
		InitCommand=cmd(zoom,0.69;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd();
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/CGSS/bg_anim_circle_00"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X-185;y,SCREEN_CENTER_Y+260;diffusealpha,0.9;zoom,0.59;);
		OnCommand=cmd(spin;effectmagnitude,0,0,-27;);
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/CGSS/bg_anim_circle_02"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X+405;y,SCREEN_CENTER_Y+260;diffusealpha,0.9;zoom,0.69;);
		OnCommand=cmd(spin;effectmagnitude,0,0,-9;);
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/CGSS/bg_anim_circle_00"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X+298;y,SCREEN_CENTER_Y-320;diffusealpha,0.9;zoom,0.61;);
		OnCommand=cmd(spin;effectmagnitude,0,0,20;);
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/CGSS/bg_anim_circle_02"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X+298;y,SCREEN_CENTER_Y-320;diffusealpha,0.9;zoom,0.63;);
		OnCommand=cmd(spin;effectmagnitude,0,0,-9;);
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/CGSS/bg_anim_circle_00"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X-395;y,SCREEN_CENTER_Y-240;diffusealpha,0.9;zoom,0.59;);
		OnCommand=cmd(spin;effectmagnitude,0,0,-18;);
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/CGSS/bg_anim_circle_01"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X-395;y,SCREEN_CENTER_Y-240;diffusealpha,0.9;zoom,0.59;);
		OnCommand=cmd(spin;effectmagnitude,0,0,7;);
	};
};

return t;
