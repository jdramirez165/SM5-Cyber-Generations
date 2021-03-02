--[[ScreenSelectMode Icon]]

local gc = Var "GameCommand";

local t = Def.ActorFrame{
	Def.ActorFrame{
		LoadActor("icon_glow")..{
			InitCommand=cmd(x,0;y,0;);
			OffCommand=cmd(linear,0.1;diffusealpha,0);
			GainFocusCommand=cmd(finishtweening;diffusealpha,0;smooth,0.3;diffusealpha,1;);
			LoseFocusCommand=cmd(finishtweening;diffusealpha,1;smooth,0.3;;diffusealpha,0;);
		};
	};

	Def.ActorFrame{
		--iconbase
		LoadActor(gc:GetName())..{
			OffCommand=cmd(linear,0.9;diffusealpha,0);
			OnCommand=function(self)
				if GAMESTATE:GetCurrentStyle():GetStepsType() == "StepsType_Dance_Solo"or
				GAMESTATE:GetCurrentStyle():GetStyleType() == "StyleType_OnePlayerTwoSides" then
					if gc:GetName() == "Rave" then
						self:diffuse(color("0.2,0.2,0.2,1"));
					end;
				end;
			end;
			GainFocusCommand=cmd(finishtweening;linear,0.2;diffuse,color("1,1,1,1"););
			LoseFocusCommand=cmd(linear,0.1;diffuse,color("0.45,0.45,0.45,1"););
		};
		
		--iconfocusglow
		LoadActor(gc:GetName())..{
			OnCommand=function(self)
				if gc:GetName() == "Dance" then
					self:playcommand("GainFocus");
				end;
			end;
			OffCommand=cmd(linear,0.9;diffusealpha,0;);
			SleepCommand=cmd(sleep,4;queuecommand,"GainFocus";);
		};
	};
};
return t;