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
      servers = {
        sqruff = {
          enabled = true,
        },
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
        svelte = {
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
