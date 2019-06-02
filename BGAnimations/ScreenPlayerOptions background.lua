local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	Def.Sprite {
		Condition=not GAMESTATE:IsCourseMode();
		InitCommand=cmd(Center);
		OnCommand=function(self)
			if GAMESTATE:GetCurrentSong() then
				local song = GAMESTATE:GetCurrentSong();
				if song:HasBackground() then
					self:LoadBackground(song:GetBackgroundPath());
				end;
				self:scale_or_crop_background();
				(cmd())(self);
			else
				self:visible(false);
			end
		end;
	};
};
return t
