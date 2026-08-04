hl.config({
	general = {
		border_size = 1,

		gaps_in = 4,
		gaps_out = 6,
	},

	decoration = {
		rounding = 13,
		fullscreen_opacity = 1,
		active_opacity = 0.99,
		inactive_opacity = 0.97,
	},
})

hl.layer_rule({
	name = "noctalia",
	match = {
		namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
	},
	no_anim = true,
	ignore_alpha = 0.5,
	blur = true,
	blur_popups = true,
})

hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 4,
	bezier = "default",
	style = "slide",
})

hl.animation({
	leaf = "windows",
	enabled = true,
	speed = 4,
	bezier = "default",
	style = "slide",
})
