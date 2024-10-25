local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Ayu Mirage"
-- local scheme = wezterm.get_builtin_color_schemes()[config.color_scheme]
-- local bg = wezterm.color.parse(scheme.background)
-- local h, s, l, _ = bg:hsla()

config.font = wezterm.font("JetBrains Mono")
config.font_size = 12

config.default_cursor_style = "SteadyUnderline"

config.window_background_opacity = 0.8
config.macos_window_background_blur = 30

config.enable_tab_bar = false
-- config.tab_bar_at_bottom = true
config.window_decorations = "RESIZE"
-- config.window_frame = {
-- 	active_titlebar_bg = wezterm.color.from_hsla(h, s, l, 0.8),
-- 	inactive_titlebar_bg = "none",
-- 	active_titlebar_fg = "none",
-- 	inactive_titlebar_fg = "none",
-- }

config.keys = {
  {
    key = "=",
    mods = "CTRL",
    action = wezterm.action.DisableDefaultAssignment,
  },
  {
    key = "-",
    mods = "CTRL",
    action = wezterm.action.DisableDefaultAssignment,
  },
}

return config
