return {
  "folke/snacks.nvim",
  opts = {
    -- Lazygit theme is configured in the XDG_CONFIG_HOME dir using a custom Catppuccin theme
    -- this disables the default Snacks theme overrides
    lazygit = {
      configure = false,
      theme = nil,
    },
  },
}
