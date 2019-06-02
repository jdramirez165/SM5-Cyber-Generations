local t = Def.ActorFrame {};

local s=nil;

local function update(self)
	if SCREENMAN:GetTopScreen()~=s then
		s=SCREENMAN:GetTopScreen();
		local c=self:GetChild("BG");
	--	c:playcommand("Start");
	end;
end;
if not getenv("D3MIXMode") then
	setenv("D3MIXMode",false);
end;

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(Center;);
	LoadActor("bg_main")..{
		InitCommand=function(self)
			self:visible(not getenv("D3MIXMode"));
		end;
	};
	LoadActor("d3mode")..{
		InitCommand=function(self)
			self:visible(getenv("D3MIXMode"));
		end;
	};
	--[[
	LoadActor("bg_pink") .. {
		Name="BG";
		OnCommand=cmd(playcommand,"Start");
		StartCommand=function(self)
			self:finishtweening();
			self:x(0);
			self:y(0);
			self:scaletoclipped(SCREEN_WIDTH+1,SCREEN_HEIGHT);
			self:addy(-SCREEN_HEIGHT);
			self:decelerate(_TT.S_IN);
			self:addy(SCREEN_HEIGHT);
		end;
		OffCommand=function(self)
			self:accelerate(_TT.S_OUT);
			self:addy(SCREEN_HEIGHT);
		end;
	};
	--]]
	--[[
	Def.Quad{
		InitCommand=cmd(zoomto,SCREEN_WIDTH+1,SCREEN_HEIGHT+1;diffuse,0.9,0.1,0.8,0.3;);
	};
	Def.Quad{
		InitCommand=cmd(zoomto,SCREEN_WIDTH+1,SCREEN_HEIGHT+1;diffuse,1,0.8,0.9,0.3;blend,"BlendMode_Add")
	};
	Def.Quad{
		InitCommand=cmd(zoomto,SCREEN_WIDTH+1,SCREEN_HEIGHT+1;diffuse,1,1,1,1;fadetop,1)
	};
	--]]
};

return t;
