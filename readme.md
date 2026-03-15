<p align="center">
    <img src="https://raw.githubusercontent.com/oxechicao/mandacaru-vs/refs/heads/main/mandacaru.png" width="89" />
    <h2 align="center">Turnstyle Theme</h2>
</p>

# Turnstyle WEZTERM README

## Usage

To install the theme using the built-in WezTerm plugin support, add these lines
to your `wezterm.lua` file above the `return` block (available variants are
`main`, `darker`):

```lua
local wezterm = require('wezterm')
local theme = wezterm.plugin.require('https://github.com/oxechicao/turnstyle-wezterm').main
```

If you prefer to install the theme manually, copy `plugin/init.lua` to
`~/.config/wezterm/lua/` (Linux, macOS, and FreeBSD) or the directory containing
`wezterm.exe` (Windows), and rename it to `turnstyle.lua`. Load the module and
variant you want to use:

```lua
local theme = require('lua/turnstyle').main

```

Then, specify the color definitions in your configuration to style the terminal
and tab bar:

```lua
return {
    colors = theme.colors(),
    window_frame = theme.window_frame(), -- needed only if using fancy tab bar
}
```
