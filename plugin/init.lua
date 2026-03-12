-- Copyright (c) 2026 turnstyle

-- repository: https://github.com/oxechicao/turnstyle-wezterm
-- license: MIT

local main = {}

local main_palette = {
	base = "#1d263a",
	overlay = "#2c4259",
	muted = "#687a87",
	text = "#e0f0f0",
	never_enough = "#a3cbd2",
	tlc = "#da81aa",
	sole = "#d7a275",
	gravity = "#75a6eb",
	sunshower = "#dfdf90",
	birds = "#4fa190",
	light_design_high = "#545b6d",
	light_design_med = "#3c465d",
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
		cursor_bg = main_palette.light_design_high,
		cursor_border = main_palette.light_design_high,
		cursor_fg = main_palette.text,
		selection_bg = main_palette.light_design_med,
		selection_fg = main_palette.text,

		ansi = {
			main_palette.overlay,
			main_palette.never_enough,
			main_palette.gravity,
			main_palette.tlc,
			main_palette.sunshower,
			main_palette.birds,
			main_palette.sole,
			main_palette.text,
		},

		brights = {
			main_palette.muted,
			main_palette.never_enough,
			main_palette.gravity,
			main_palette.tlc,
			main_palette.sunshower,
			main_palette.birds,
			main_palette.sole,
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
	muted = "#687a87",
	text = "#e0f0f0",
	never_enough = "#a3cbd2",
	tlc = "#da81aa",
	sole = "#d7a275",
	gravity = "#75a6eb",
	sunshower = "#dfdf90",
	birds = "#4fa190",
	light_design_high = "#363f53",
	light_design_med = "#222c44",
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
		cursor_bg = darker_palette.light_design_high,
		cursor_border = darker_palette.light_design_high,
		cursor_fg = darker_palette.text,
		selection_bg = darker_palette.overlay,
		selection_fg = darker_palette.text,

		ansi = {
			darker_palette.overlay,
			darker_palette.never_enough,
			darker_palette.gravity,
			darker_palette.tlc,
			darker_palette.sunshower,
			darker_palette.birds,
			darker_palette.sole,
			darker_palette.text,
		},

		brights = {
			darker_palette.muted,
			darker_palette.never_enough,
			darker_palette.gravity,
			darker_palette.tlc,
			darker_palette.sunshower,
			darker_palette.birds,
			darker_palette.sole,
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
