return {
	{
		"mason-org/mason.nvim",
		opts = {
			ensure_installed = {
				"prettier",
				"sqruff",
			},
		},
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				["markdown"] = { "prettier" },
				["sql"] = { "sqruff" },
			},
		},
	},
}
