-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.colors = {
    background = '#3c3836'
}
config.cursor_blink_rate = 500
config.default_cursor_style = "BlinkingUnderline"
config.font_size = 14
config.initial_cols = 200
config.initial_rows = 50
config.line_height = 1.1
config.macos_window_background_blur = 20
config.underline_thickness = "1pt"
config.window_background_opacity = 0.85

window_decorations = 'RESIZE|INTEGRATED_BUTTONS',

-- or, changing the font size and color scheme.
wezterm.font('SpaceMono Nerd Font Mono', { weight = 'Light' })
 
wezterm.on('update-status', function(window, pane)
  local process = pane:get_foreground_process_name()
  
  if process and process:find('nvim') then
    window:set_config_overrides({
      window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
    })
  else
    window:set_config_overrides({
      window_padding = { left = 25, right = 10, top = 10, bottom = 10 }
    })
  end
end)

return config