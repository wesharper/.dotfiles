return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "svelte-language-server",
        "sqruff",
        "tsgo",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlayHints = false,
      servers = {
        sqruff = {
          enabled = true,
        },
        vtsls = {
          enabled = false,
        },
        tsgo = {
          enabled = true,
        },
      },
    },
  },
}
