local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
    automatically_reload_config = true,
    enable_tab_bar = false,
    window_close_confirmation = "NeverPrompt",
    window_decorations = "RESIZE",
    default_cursor_style = "BlinkingBar",
    color_scheme = "Adventure",
    font = wezterm.font("JetBrains Mono", {weight = "Bold"}),
    font_size = 21.0,
    initial_cols = 110,
    initial_rows = 30,
    background = {
        {
            source = {
                File = "",
            },
            hsb = {
                hue = 1.0,
                saturation = 1.02,
                brightness = 0.50,
            },
            width = "100%",
            height = "100%",
        },
        {
            source = {
                Color = "#000",
            },
            width = "100%",
            height = "100%",
            opacity = 0.75,
        }
    },
    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    }
}

return config
