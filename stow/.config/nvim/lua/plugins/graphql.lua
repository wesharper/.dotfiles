return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "graphql-language-service-cli",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "graphql" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      ensure_installed = { "graphql" },
      servers = {
        graphql = {
          filetypes = { "graphql", "javascript", "javascriptreact", "typescript", "typescriptreact", "svelte" },
        },
      },
    },
  },
}
