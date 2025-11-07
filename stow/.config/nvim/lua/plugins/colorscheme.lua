return {
  "LazyVim/LazyVim",
  opts = function(_, opts)
    if vim.uv.os_uname().sysname == "Darwin" then
      opts.colorscheme = "catppuccin"
    end
    return opts
  end,
}
