local t=Def.ActorFrame{
	FOV=60;
	InitCommand=cmd(vanishpoint,SCREEN_CENTER_X,SCREEN_HEIGHT/2);
	Def.Quad{
		InitCommand=cmd(FullScreen;x,0;y,0;diffuse,0.25,0.6,0.75,1.0);
	};
	LoadActor("_blue")..{
		InitCommand=cmd(diffusealpha,0.3);
	};
	LoadActor("d3_tile")..{
		InitCommand=cmd(rotationy,0;rotationz,0;rotationx,-90/4*3.75;y,80;
			zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2-40;texcoordvelocity,0,-4;
			customtexturerect,0,0,SCREEN_WIDTH*8/256,SCREEN_HEIGHT*8/256);
	};
	LoadActor("d3_tile")..{
		InitCommand=cmd(rotationy,0;rotationz,0;rotationx,90/4*3.75;y,-80;
			zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2-40;texcoordvelocity,0,4;
			customtexturerect,0,0,SCREEN_WIDTH*8/256,SCREEN_HEIGHT*8/256);
	};
	Def.Quad{
		InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT/2-40;
			blend,"BlendMode_Add";
			x,0;y,-SCREEN_CENTER_Y/2-20;diffuse,1,1,1,0.5;fadetop,1);
	};
	Def.Quad{
		InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT/2-40;
			blend,"BlendMode_Add";	
			x,0;y,SCREEN_CENTER_Y/2+20;diffuse,1,1,1,0.5;fadebottom,1);
	};
};

local m=128;
local l=320.0;
for i=1,m do
	local cnt=i-1;
	t[#t+1]=LoadActor("d3_white")..{
		InitCommand=function(self)
			--self:zoomto(8,224);
			self:zoomz(1);
			self:diffuse(1,1,1,1);
			self:queuecommand("Loop");
		end;
		LoopCommand=function(self)
			self:stoptweening();
			self:diffusealpha((cnt==0) and 0 or 1);
			self:x(l*(math.sin(math.pi*2*cnt/64)));
			self:y(l*(math.cos(math.pi*2*cnt/64))-SCREEN_HEIGHT/3);
			self:z(l*0.04*cnt-l*3);
			self:rotationz(-cnt*360/64+40);
			self:linear(0.3);
			self:diffusealpha(1);
			self:x(l*(math.sin(math.pi*2*i/64)));
			self:y(l*(math.cos(math.pi*2*i/64))-SCREEN_HEIGHT/3);
			self:z(l*0.04*i-l*3);
			self:rotationz(-i*360/64+40);
			self:queuecommand("Loop");
		end;
	};
	t[#t+1]=LoadActor("d3_white")..{
		InitCommand=function(self)
			--self:zoomto(8,224);
			self:zoomz(1);
			self:diffuse(1,1,1,1);
			self:queuecommand("Loop");
		end;
		LoopCommand=function(self)
			self:stoptweening();
			self:diffusealpha((cnt==0) and 0 or 1);
			self:x(-l*(math.sin(math.pi*2*cnt/64)));
			self:y(-l*(math.cos(math.pi*2*cnt/64)));
			self:z(l*0.04*cnt-l*3);
			self:rotationz(-cnt*360/64+40);
			self:linear(0.3);
			self:diffusealpha(1);
			self:x(-l*(math.sin(math.pi*2*i/64)));
			self:y(-l*(math.cos(math.pi*2*i/64)));
			self:z(l*0.04*i-l*3);
			self:rotationz(-i*360/64+40);
			self:queuecommand("Loop");
		end;
	};
end;

return t;
