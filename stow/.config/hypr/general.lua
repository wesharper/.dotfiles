hl.config({
	general = {
		allow_tearing = true,
		snap = {
			enabled = true,
			border_overlap = false,
			window_gap = 20,
			monitor_gap = 20,
			respect_gaps = true,
		},
	},

	misc = {
		disable_hyprland_logo = true,
	},

	dwindle = {
		force_split = 2,
		preserve_split = true,
		smart_split = false,
		smart_resizing = false,
		permanent_direction_override = false,
		special_scale_factor = 1,
		split_width_multiplier = 1.0,
		use_active_for_splits = true,
		default_split_ratio = 1.0,
		split_bias = 0,
		precise_mouse_move = false,
	},
})
