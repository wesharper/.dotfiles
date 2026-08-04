return {
	{
		"mason-org/mason.nvim",
		opts = {
			ensure_installed = {
				"oxfmt",
			},
		},
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				["markdown"] = { "oxfmt" },
				["toml"] = { "oxfmt" },
			},
		},
	},
}
