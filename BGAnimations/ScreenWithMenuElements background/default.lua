local t = Def.ActorFrame{};

local BG = "";

if ThemePrefs.Get("MenuBG") == "Cyber Generations" then
  BG = "CG"
elseif ThemePrefs.Get("MenuBG") == "Girls Band Party" then
  BG = "GBP"
elseif ThemePrefs.Get("MenuBG") == "Starlight Stage" then
  BG = "CGSS"
elseif ThemePrefs.Get("MenuBG") == "DJ Troopers - TYPE 01" then
  BG = "IIDX15_TYPE01"
elseif ThemePrefs.Get("MenuBG") == "DJ Troopers - TYPE 02" then
  BG = "IIDX15_TYPE02"
elseif ThemePrefs.Get("MenuBG") == "DJ Troopers - TYPE 03" then
  BG = "IIDX15_TYPE03"
elseif ThemePrefs.Get("MenuBG") == "Tricoro System" then
  BG = "IIDX20"
elseif ThemePrefs.Get("MenuBG") == "IIDX22 PENDUAL - Present" then
  BG = "IIDX22A"
elseif ThemePrefs.Get("MenuBG") == "IIDX22 PENDUAL - Future" then
  BG = "IIDX22B"
elseif ThemePrefs.Get("MenuBG") == "IIDX22 PENDUAL - Super Future 2323" then
  BG = "IIDX22C"
elseif ThemePrefs.Get("MenuBG") == "D3NEX" then
  BG = "D3NEX"
elseif ThemePrefs.Get("MenuBG") == "D3NEX MAXIMUM" then
  BG = "D3NEX_MAXIMUM"
elseif ThemePrefs.Get("MenuBG") == "Dance Dance Revolution 2014" then
  BG = "DDR_2014"
elseif ThemePrefs.Get("MenuBG") == "Dance Dance Revolution A" then
  BG = "DDR_A"
elseif ThemePrefs.Get("MenuBG") == "Dance Dance Revolution A - Extra Stage" then
  BG = "DDR_A_EX"
end;

t[#t+1] = Def.ActorFrame{
  LoadActor(BG..".lua");
};

return t
