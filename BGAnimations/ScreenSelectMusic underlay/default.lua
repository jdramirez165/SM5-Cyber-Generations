local musicWheel;

local t = Def.ActorFrame{
	Def.Quad{
		InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT);
		OnCommand=cmd(diffuse,Color.Black;diffusealpha,0);
		StartSelectingStepsMessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,0.75);
		SongUnchosenMessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,0);
	};
	     LoadFont("_fot-comet std b 48px") .. {
				  InitCommand=cmd(addy,27;maxwidth,270;diffuse,color("#FFFEE3");strokecolor,color("#212324");diffusebottomedge,color("#FFE880");horizalign,right;visible,not GAMESTATE:IsCourseMode(););
				  OffCommand=cmd(decelerate,0.3;diffusealpha,0;);
				  CurrentSongChangedMessageCommand=cmd(finishtweening;queuecommand,"Set");
				  CurrentCourseChangedMessageCommand=cmd(finishtweening;queuecommand,"Set");
				  ChangedLanguageDisplayMessageCommand=cmd(finishtweening;queuecommand,"Set");
				  SetCommand=function(self)
					   local song = GAMESTATE:GetCurrentSong();
					   if song then
							self:settext(song:GetDisplayFullTitle());
							self:playcommand("Refresh");
							(cmd(stoptweening;addx,-6;smooth,0.2;addx,6;diffusealpha,1))(self)
						else
							self:settext("");
							self:playcommand("Refresh");
					   end
				  end;
	};
    Def.Sprite{
	InitCommand=cmd(zoom,0.40;x,SCREEN_CENTER_X-560;y,SCREEN_CENTER_Y-240);
    OnCommand=function(self)
        musicWheel = SCREENMAN:GetTopScreen():GetChild('MusicWheel');
    end;
    CurrentSongChangedMessageCommand=function(self)
        if musicWheel ~= nil then
            local groupName = musicWheel:GetSelectedSection();
            if (groupName ~= nil or groupName ~= "") and FILEMAN:DoesFileExist(THEME:GetCurrentThemeDirectory().."Graphics/Folder_Logo/"..groupName..".png") then
                self:Load(THEME:GetPathG("","Folder_Logo/"..groupName));
			   self:playcommand("Refresh");
			   (cmd(;diffusealpha,0;stoptweening;addx,-9;smooth,0.3;addx,9;diffusealpha,1))(self)
            else
                self:Load(nil);
            end;
        end;
    end;
	};
	    Def.Sprite{
	InitCommand=cmd(zoom,2.00;x,SCREEN_CENTER_X-583;y,SCREEN_CENTER_Y-232);
    OnCommand=function(self)
        musicWheel = SCREENMAN:GetTopScreen():GetChild('MusicWheel');
    end;
    CurrentSongChangedMessageCommand=function(self)
        if musicWheel ~= nil then
            local groupName = musicWheel:GetSelectedSection();
            if groupName ~= nil or groupName ~= "" then
			   self:Load(THEME:GetPathB("ScreenSelectMusic","underlay/Flash"));
			   (cmd(stoptweening;diffusealpha,1;smooth,0.5;diffusealpha,0;blend,'BlendMode_Add'))(self)
            else
                self:Load(nil);
            end;
        end;
    end;
	};
};

t.InitCommand=cmd(Center);

return t;
