return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters = {
      rubocop = {
        args = { "--server", "--auto-correct-all", "--stderr", "--force-exclusion", "--stdin", "$FILENAME" },
      },
    },
  },
}
