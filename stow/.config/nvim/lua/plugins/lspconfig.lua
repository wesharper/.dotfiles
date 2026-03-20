return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "tsgo",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          enabled = false,
        },
        tsgo = {
          enabled = true,
          settings = {
            typescript = {
              inlayHints = false,
            },
          },
        },
      },
    },
  },
}
