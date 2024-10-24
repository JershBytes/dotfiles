-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = "Dracula"

config.enable_tab_bar = false

config.window_background_opacity = 0.75
config.macos_window_background_blur = 10


config.mouse_bindings = {

    {
        event = { Up = { streak = 1, button = 'Left' } },
        mods = 'CTRL',
        action = act.OpenLinkAtMouseCursor,
      }
    }

-- and finally, return the configuration to wezterm
return config

