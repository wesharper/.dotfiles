if vim.fn.has("macunix") then
  return {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  }
else
  return {}
end
