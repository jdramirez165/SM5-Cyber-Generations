local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
  FOV=90;
	LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/MLTD/Background"))..{
		InitCommand=cmd(zoom,0.69;x,SCREEN_CENTER_X+448;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add');
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/MLTD/05"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X+405;y,SCREEN_CENTER_Y-240;blend,'BlendMode_Add';zoom,0.59;);
		OnCommand=cmd(spin;effectmagnitude,0,0,-10;);
	};
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/MLTD/07"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X+370;y,SCREEN_CENTER_Y-165;blend,'BlendMode_Add';zoom,0.59;);
		OnCommand=cmd(spin;effectmagnitude,0,0,05;);
	};
};

return t;
