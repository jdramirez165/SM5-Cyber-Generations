-- StepMania 5 Default Theme Preferences Handler
local function OptionNameString(str)
	return THEME:GetString('OptionNames',str)
end

-- Example usage of new system (not fully implemented yet)
local Prefs =
{
	AutoSetStyle =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	GameplayShowStepsDisplay = 
	{
		Default = true,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	GameplayShowScore =
	{
		Default = true,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	ShowLotsaOptions =
	{
		Default = true,
		Choices = { OptionNameString('Many'), OptionNameString('Few') },
		Values = { true, false }
	},
	LongFail =
	{
		Default = false,
		Choices = { OptionNameString('Short'), OptionNameString('Long') },
		Values = { false, true }
	},
	NotePosition =
	{
		Default = true,
		Choices = { OptionNameString('Normal'), OptionNameString('Lower') },
		Values = { true, false }
	},
	ComboOnRolls =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	FlashyCombo =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	ComboUnderField =
	{
		Default = true,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	TimingDisplay =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	GameplayFooter =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	MenuBG =
	{
		Default = "Cyber Generations",
		Choices = { "Cyber Generations", "Girls Band Party", "Girls Band Party NEO", "Project Morfonica OS", "Starlight Stage", "Starlight Stage NEO", "Million Live Theater Days [WIP]", "Tokimeki Idol", "DJ Troopers - TYPE 01", "DJ Troopers - TYPE 02", "DJ Troopers - TYPE 03", "Tricoro System", "IIDX22 PENDUAL - Present", "IIDX22 PENDUAL - Future", "IIDX22 PENDUAL - Super Future 2323", "IIDX26 Rootage", "IIDX26 Rootage - ARC SCORE", "IIDX26 Rootage - DELABITY LABORATORY", "IIDX27 Heroric Verse", "D3NEX", "D3NEX MAXIMUM", "Dance Dance Revolution 2014", "Dance Dance Revolution A", "Dance Dance Revolution A - Extra Stage", "Dance Dance Revolution A20", "BeatStream", "Bombergirl", "Cyberpunk 2077 - Night City Skyline" },
		Values = { "Cyber Generations", "Girls Band Party", "Girls Band Party NEO", "Project Morfonica OS", "Starlight Stage", "Starlight Stage NEO", "Million Live Theater Days [WIP]", "Tokimeki Idol", "DJ Troopers - TYPE 01", "DJ Troopers - TYPE 02", "DJ Troopers - TYPE 03", "Tricoro System", "IIDX22 PENDUAL - Present", "IIDX22 PENDUAL - Future", "IIDX22 PENDUAL - Super Future 2323", "IIDX26 Rootage", "IIDX26 Rootage - ARC SCORE", "IIDX26 Rootage - DELABITY LABORATORY", "IIDX27 Heroric Verse", "D3NEX", "D3NEX MAXIMUM", "Dance Dance Revolution 2014", "Dance Dance Revolution A", "Dance Dance Revolution A - Extra Stage", "Dance Dance Revolution A20", "BeatStream", "Bombergirl", "Cyberpunk 2077 - Night City Skyline"  }
	},
}

ThemePrefs.InitAll(Prefs)

function InitUserPrefs()
	local Prefs = {
		UserPrefScoringMode = 'DDR Extreme',
        UserPrefSoundPack   = 'default',
		UserPrefProtimingP1 = false,
		UserPrefProtimingP2 = false,
	}
	for k, v in pairs(Prefs) do
		-- kind of xxx
		local GetPref = type(v) == "boolean" and GetUserPrefB or GetUserPref
		if GetPref(k) == nil then
			SetUserPref(k, v)
		end
	end

	-- screen filter
	setenv("ScreenFilterP1",0)
	setenv("ScreenFilterP2",0)
end

function GetProTiming(pn)
	local pname = ToEnumShortString(pn)
	if GetUserPref("ProTiming"..pname) then
		return GetUserPrefB("ProTiming"..pname)
	else
		SetUserPref("ProTiming"..pname,false)
		return false
	end
end

--[[ option rows ]]

-- screen filter
function OptionRowScreenFilter()
	return {
		Name="ScreenFilter",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = { THEME:GetString('OptionNames','Off'), '0.1', '0.2', '0.3', '0.4', '0.5', '0.6', '0.7', '0.8', '0.9', '1.0', },
		LoadSelections = function(self, list, pn)
			local pName = ToEnumShortString(pn)
			local filterValue = getenv("ScreenFilter"..pName)
			if filterValue ~= nil then
				local val = scale(tonumber(filterValue),0,1,1,#list )
				list[val] = true
			else
				setenv("ScreenFilter"..pName,0)
				list[1] = true
			end
		end,
		SaveSelections = function(self, list, pn)
			local pName = ToEnumShortString(pn)
			local found = false
			for i=1,#list do
				if not found then
					if list[i] == true then
						local val = scale(i,1,#list,0,1)
						setenv("ScreenFilter"..pName,val)
						found = true
					end
				end
			end
		end,
	}
end

-- protiming
function OptionRowProTiming()
	return {
		Name = "ProTiming",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = {
			THEME:GetString('OptionNames','Off'),
			THEME:GetString('OptionNames','On')
		},
		LoadSelections = function(self, list, pn)
			if GetUserPrefB("UserPrefProtiming" .. ToEnumShortString(pn)) then
				local bShow = GetUserPrefB("UserPrefProtiming" .. ToEnumShortString(pn))
				if bShow then
					list[2] = true
				else
					list[1] = true
				end
			else
				list[1] = true
			end
		end,
		SaveSelections = function(self, list, pn)
			local bSave = list[2] and true or false
			SetUserPref("UserPrefProtiming" .. ToEnumShortString(pn), bSave)
		end
	}
end

--[[ end option rows ]]
