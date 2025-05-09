-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- file picker
vim.keymap.set("n", "<leader><space>", LazyVim.pick("smart"), { desc = "Find Files (smart)" })
