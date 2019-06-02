local haishin = ...;
local t=Def.ActorFrame {
  FOV=90;
  InitCommand=cmd(Center);
	Def.Quad {
		Name="BG1";
		InitCommand=cmd(scaletoclipped,SCREEN_WIDTH/2,SCREEN_HEIGHT;x,-SCREEN_WIDTH/4);
		OnCommand=cmd(diffuse,color("#ff1493");diffuserightedge,color("#000000"));
	};
	Def.Quad {
		Name="BG2";
		InitCommand=cmd(scaletoclipped,SCREEN_WIDTH/2,SCREEN_HEIGHT;x,SCREEN_CENTER_X-(SCREEN_WIDTH/4));
		OnCommand=cmd(diffuse,color("#ff1493");diffuseleftedge,color("#000000"));
	};
};

return t;
