hl.window_rule({
	match = { class = "dev.noctalia.Noctalia" },
	float = true,
	size = { 1080, 920 },
})

hl.window_rule({
	match = {
		class = "^steam_app_\\d+$",
	},
	content = "game",
})

hl.window_rule({
	match = {
		content = "game",
	},
	fullscreen = true,
	stay_focused = true,
	no_blur = true,
	idle_inhibit = "fullscreen",
	immediate = true,
	render_unfocused = true,
})
