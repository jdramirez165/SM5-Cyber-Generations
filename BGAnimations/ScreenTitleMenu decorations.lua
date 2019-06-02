InitUserPrefs();
local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	OnCommand=function(self)
		if not FILEMAN:DoesFileExist("Save/ThemePrefs.ini") then
			Trace("ThemePrefs doesn't exist; creating file")
			ThemePrefs.ForceSave()
		end

		ThemePrefs.Save()
	end;
};

-- Version info on top corner

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(diffusealpha,0;sleep,1;linear,0.2;diffusealpha,1;);
	OffCommand=cmd(smooth,0.4;diffusealpha,0;);
		Def.BitmapText { 
			Font= "Common Normal",
			Text= "Songs:" .. tostring(SONGMAN:GetNumSongs()),
			InitCommand= function(self) self:shadowlength(1):zoom(0.6):xy(110,24):diffuse(color("#FFFFFF")):horizalign(left) end
		};
	};
	
t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(diffusealpha,0;sleep,1;linear,0.2;diffusealpha,1;);
	OffCommand=cmd(smooth,0.4;diffusealpha,0;);
		Def.BitmapText { 
			Font= "Common Normal",
			Text= "Courses: " .. tostring(SONGMAN:GetNumCourses()),
			InitCommand= function(self) self:shadowlength(1):zoom(0.6):xy(110,44):diffuse(color("#FFFFFF")):horizalign(left) end
		};
	};	
	
t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_RIGHT-110);
	OnCommand=cmd(diffusealpha,0;sleep,1;linear,0.2;diffusealpha,1;);
	OffCommand=cmd(smooth,0.4;diffusealpha,0;);
		Def.BitmapText { 
			Font= "Common Normal",
			Text= string.format("StepMania %s", ProductVersion()), 
			InitCommand= function(self) self:shadowlength(1):zoom(0.75):y(24):diffuse(color("#FFFFFF")):horizalign(right) end
		};
	};

return t;