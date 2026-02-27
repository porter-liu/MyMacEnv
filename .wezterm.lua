local wezterm = require("wezterm")


-- Customize the tabbar using Catppuccin Mocha palette (official-ish)
local mocha = {
  base     = "#1e1e2e",
  mantle   = "#181825",
  crust    = "#11111b",
  surface0 = "#313244",
  surface1 = "#45475a",
  surface2 = "#585b70",
  text     = "#cdd6f4",
  subtext0 = "#a6adc8",
  subtext1 = "#bac2de",
  blue     = "#89b4fa",
}

local SOLID_LEFT  = ""  -- requires Nerd Font / powerline glyphs
local SOLID_RIGHT = ""

local function tab_title(tab, max_width)
  local title = tab.active_pane.title
  if not title or title == "" then
    title = tostring(tab.tab_index + 1)
  end

  -- ===== 计算可用宽度 =====
  local reserved = 6   --  + padding + 
  local safety = 2
  local mw = max_width or 20
  local available = math.max(1, mw - reserved - safety)

  -- ===== 如果是路径，优先保留最后一段 =====
  -- 支持 / 和 \（兼容 ssh / windows）
  local last_segment = title:match("[^/\\]+$")

  if last_segment and #last_segment < available then
    -- 能完整放下最后一段 → 尽量多带一点左侧路径
    local remaining = available - #last_segment - 1 -- 给 '/'
    if remaining > 0 then
      local prefix = title:sub(1, #title - #last_segment - 1)
      prefix = wezterm.truncate_left(prefix, remaining)
      return prefix .. "/" .. last_segment
    else
      return last_segment
    end
  end

  -- ===== fallback：普通左截断 =====
  return wezterm.truncate_left(title, available)
end

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local bar_bg = mocha.mantle

  -- states
  local pill_bg, pill_fg
  if tab.is_active then
    pill_bg = mocha.blue
    pill_fg = mocha.base
  elseif hover then
    pill_bg = mocha.surface1
    pill_fg = mocha.text
  else
    pill_bg = mocha.surface0
    pill_fg = mocha.subtext0
  end

  local title = tab_title(tab, max_width)

  return {
    -- bar background
    { Background = { Color = bar_bg } },

    -- a little spacing between pills (looks cleaner than a hard divider)
    { Foreground = { Color = mocha.surface2 } },
    { Text = " " },

    -- left rounded cap
    { Foreground = { Color = pill_bg } },
    { Text = SOLID_LEFT },

    -- pill body
    { Background = { Color = pill_bg } },
    { Foreground = { Color = pill_fg } },
    { Attribute = { Intensity = tab.is_active and "Bold" or "Normal" } },
    { Text = "  " .. title .. "  " },

    -- right rounded cap
    { Background = { Color = bar_bg } },
    { Foreground = { Color = pill_bg } },
    { Text = SOLID_RIGHT },
  }
end)


return {
	font = wezterm.font_with_fallback({
		"JetBrainsMonoNL Nerd Font Mono",
		"Sarasa Term Lumi X",
		"Apple Color Emoji",
	}),

	font_rules = {
		{
			intensity = "Bold",
			font = wezterm.font_with_fallback({
				{ family = "JetBrainsMonoNL Nerd Font Mono", weight = "Bold" },
				{ family = "Sarasa Term Lumi X", weight = "Bold" },
				"Apple Color Emoji",
			}),
		},
	},

	font_size = 20,
	line_height = 1.05,
	freetype_load_target = "Light",

	cell_width = 1.0,

	enable_tab_bar = true,
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = false, -- 只有一个 tab 也显示，更“应用化”
	switch_to_last_active_tab_when_closing_tab = true,
  tab_max_width = 26,         -- 更紧凑
  colors = {
    background = "#181825", -- mantle
  },

	window_padding = {
		left = 8,
		right = 8,
		top = 6,
		bottom = 6,
	},

	color_scheme = "Catppuccin Mocha",

	enable_wayland = false,

	max_fps = 120,

	animation_fps = 120,

	front_end = "WebGpu",

	cursor_blink_rate = 500,

	default_cursor_style = "BlinkingBar",
}
