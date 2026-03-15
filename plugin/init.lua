-- Copyright (c) 2026 mandacaru

-- repository: https://github.com/oxechicao/mandacaru-wezterm
-- license: MIT

local main = {}

local main_palette = {
	base = "#302834",
	overlay = "#37283e",
	muted = "#997166",
	text = "#f8f8eb",
	mandacaru = "#d2a0c6",
	sky = "#a7d9e6",
	sand = "#f8cf91",
	flower = "#b8d4b4",
	land = "#6cbfd5",
	cactus = "#a7e39c",
	highlight_high = "#a25039",
	highlight_med = "#6c473d",
}

local main_active_tab = {
	bg_color = main_palette.overlay,
	fg_color = main_palette.text,
}

local main_inactive_tab = {
	bg_color = main_palette.base,
	fg_color = main_palette.muted,
}

function main.colors()
	return {
		foreground = main_palette.text,
		background = main_palette.base,
		cursor_bg = main_palette.highlight_high,
		cursor_border = main_palette.highlight_high,
		cursor_fg = main_palette.text,
		selection_bg = main_palette.highlight_med,
		selection_fg = main_palette.text,

		ansi = {
			main_palette.overlay,
			main_palette.mandacaru,
			main_palette.flower,
			main_palette.sky,
			main_palette.land,
			main_palette.cactus,
			main_palette.sand,
			main_palette.text,
		},

		brights = {
			main_palette.muted,
			main_palette.mandacaru,
			main_palette.flower,
			main_palette.sky,
			main_palette.land,
			main_palette.cactus,
			main_palette.sand,
			main_palette.text,
		},

		tab_bar = {
			background = main_palette.base,
			active_tab = main_active_tab,
			inactive_tab = main_inactive_tab,
			inactive_tab_hover = main_active_tab,
			new_tab = main_inactive_tab,
			new_tab_hover = main_active_tab,
			inactive_tab_edge = main_palette.muted, -- (Fancy tab bar only)
		},
	}
end

function main.window_frame() -- (Fancy tab bar only)
	return {
		active_titlebar_bg = main_palette.base,
		inactive_titlebar_bg = main_palette.base,
	}
end

local darker = {}

local darker_palette = {
	base = "#0f1524",
	overlay = "#182b3e",
	muted = "#997166",
	text = "#f8f8eb",
	mandacaru = "#d2a0c6",
	sky = "#a7d9e6",
	sand = "#f8cf91",
	flower = "#b8d4b4",
	land = "#6cbfd5",
	cactus = "#a7e39c",
	highlight_high = "#363f53",
	highlight_med = "#222c44",
}

local darker_active_tab = {
	bg_color = darker_palette.overlay,
	fg_color = darker_palette.text,
}

local darker_inactive_tab = {
	bg_color = darker_palette.base,
	fg_color = darker_palette.muted,
}

function darker.colors()
	return {
		foreground = darker_palette.text,
		background = darker_palette.base,
		cursor_bg = darker_palette.highlight_high,
		cursor_border = darker_palette.highlight_high,
		cursor_fg = darker_palette.text,
		selection_bg = darker_palette.overlay,
		selection_fg = darker_palette.text,

		ansi = {
			darker_palette.overlay,
			darker_palette.mandacaru,
			darker_palette.flower,
			darker_palette.sky,
			darker_palette.land,
			darker_palette.cactus,
			darker_palette.sand,
			darker_palette.text,
		},

		brights = {
			darker_palette.muted,
			darker_palette.mandacaru,
			darker_palette.flower,
			darker_palette.sky,
			darker_palette.land,
			darker_palette.cactus,
			darker_palette.sand,
			darker_palette.text,
		},

		tab_bar = {
			background = darker_palette.base,
			active_tab = darker_active_tab,
			inactive_tab = darker_inactive_tab,
			inactive_tab_hover = darker_active_tab,
			new_tab = darker_inactive_tab,
			new_tab_hover = darker_active_tab,
			inactive_tab_edge = darker_palette.muted, -- (Fancy tab bar only)
		},
	}
end

function darker.window_frame() -- (Fancy tab bar only)
	return {
		active_titlebar_bg = darker_palette.base,
		inactive_titlebar_bg = darker_palette.base,
	}
end

return {
	main = main,
	darker = darker,
}
