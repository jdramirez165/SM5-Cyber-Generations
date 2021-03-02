local haishin = ...;
local t = Def.ActorFrame {};
local tcol="_bl";

t[#t+1] = Def.ActorFrame {
  FOV=90;
  InitCommand=cmd(Center);
	LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/PMOS/BG"))..{
		InitCommand=cmd(scaletoclipped,SCREEN_WIDTH+1,SCREEN_HEIGHT);

	};
	LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/PMOS/Thing"))..{
		InitCommand=cmd(scaletoclipped,SCREEN_WIDTH+1,SCREEN_HEIGHT);
		OnCommand=cmd(diffusealpha,1;smooth,2.2;diffusealpha,0.5;sleep,3;playcommand,"Animate");
		AnimateCommand=cmd(smooth,2.2;diffusealpha,1;smooth,2.2;diffusealpha,0.5;sleep,3;queuecommand,"Animate");
	};
	LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/PMOS/LightReflecPart01"))..{
	InitCommand=cmd(scaletoclipped,SCREEN_WIDTH+1,SCREEN_HEIGHT);
	OnCommand=cmd(diffusealpha,1;;smooth,2.2;diffusealpha,0;sleep,5;playcommand,"Animate");
	AnimateCommand=cmd(smooth,2.2;diffusealpha,1;smooth,2.2;diffusealpha,0;sleep,5;queuecommand,"Animate");
	};
     LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/PMOS/_PtcLeaf"))..{
		InitCommand=cmd(x,-SCREEN_CENTER_X;y,-SCREEN_CENTER_Y);
	};
     LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/PMOS/_PtcLight"))..{
		InitCommand=cmd(x,-SCREEN_CENTER_X;y,-SCREEN_CENTER_Y);
		};
     LoadActor(THEME:GetPathB("ScreenWithMenuElements","background/PMOS/_PtcLgt"))..{
		InitCommand=cmd(x,-SCREEN_CENTER_X;y,-SCREEN_CENTER_Y);
	};
};

return t;
