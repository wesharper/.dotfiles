local lspconfig = require("lspconfig")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      rubocop = {
        -- See: https://docs.rubocop.org/rubocop/usage/lsp.html
        cmd = { "bundle", "exec", "rubocop", "--lsp" },
        root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
      },
    },
  },
}
