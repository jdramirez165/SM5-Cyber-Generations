local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
  FOV=90;
	LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/TI/Background")) .. {
		InitCommand=cmd(zoom,0.58;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(texcoordvelocity,-0.005,0);
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/TI/Emblem")) .. {
		InitCommand=cmd(zoom,0.49;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(texcoordvelocity,0,0);
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/TI/Hex1"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X-375;y,SCREEN_CENTER_Y-160;diffusealpha,0.9;zoom,0.89;);
		OnCommand=cmd(spin;effectmagnitude,0,0,17;);
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/TI/Hex2"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X-345;y,SCREEN_CENTER_Y+140;diffusealpha,0.9;zoom,0.89;);
		OnCommand=cmd(spin;effectmagnitude,0,0,17;);
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/TI/Hex2"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X-345;y,SCREEN_CENTER_Y+140;diffusealpha,0.9;zoom,0.62;);
		OnCommand=cmd(spin;effectmagnitude,0,0,17;);
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/TI/Hex1"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X+355;y,SCREEN_CENTER_Y-100;diffusealpha,0.9;zoom,0.59;);
		OnCommand=cmd(spin;effectmagnitude,0,0,17;);
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/TI/Hex1"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X+435;y,SCREEN_CENTER_Y+125;diffusealpha,0.9;zoom,0.77;);
		OnCommand=cmd(spin;effectmagnitude,0,0,17;);
	};
};

return t;
