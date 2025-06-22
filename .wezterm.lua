-- test undercurl  printf "\x1b[58:2::255:0:0m\x1b[4:1msingle\x1b[4:2mdouble\x1b[4:3mcurly\x1b[4:4mdotted\x1b[4:5mdashed\x1b[0m\n"
-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- Visual Settings
config.color_scheme = "Tokyo Night Storm (Gogh)"
config.window_decorations = "RESIZE"
config.enable_tab_bar = true
-- https://wezfurlong.org/wezterm/config/lua/config/window_padding.html
config.window_padding = {
	left = "0",
	right = "0",
	top = "0",
	bottom = "0",
}

config.default_cwd = "~/repos/"

-- config.wsl_domains = {
-- 	{
-- 		-- The name of this specific domain.  Must be unique amonst all types
-- 		-- of domain in the configuration file.
-- 		name = "WSL:Ubuntu",
--
-- 		-- The name of the distribution.  This identifies the WSL distribution.
-- 		-- It must match a valid distribution from your `wsl -l -v` output in
-- 		-- order for the domain to be useful.
-- 		distribution = "Ubuntu",
--
-- 		-- The username to use when spawning commands in the distribution.
-- 		-- If omitted, the default user for that distribution will be used.
--
-- 		-- username = "hunter",
--
-- 		-- The current working directory to use when spawning commands, if
-- 		-- the SpawnCommand doesn't otherwise specify the directory.
--
--
-- 		-- The default command to run, if the SpawnCommand doesn't otherwise
-- 		-- override it.  Note that you may prefer to use `chsh` to set the
-- 		-- default shell for your user inside WSL to avoid needing to
-- 		-- specify it here
--
-- 		-- default_prog = {"fish"}
-- 	},
-- }
--
-- -- Launcher
-- config.default_domain = "WSL:Ubuntu"
config.default_prog = { "bash" }
config.window_close_confirmation = "NeverPrompt"
-- and finally, return the configuration to wezterm
return config
