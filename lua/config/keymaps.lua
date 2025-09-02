-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "fd", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "fd", "<Esc>", { noremap = true, silent = true })

-- ~/.config/nvim/lua/config/keymaps.lua
local misc = require("plugins.misc")

-- 复制当前文件的相对路径（含文件名）
vim.keymap.set("n", "<leader>fp", misc.copy_relative_path_with_filename, {
  desc = "Copy relative path with filename to clipboard",
  silent = true,
  noremap = true,
})

if vim.g.neovide then
  vim.keymap.set({ "n", "v" }, "<c-=>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<cr>")
  vim.keymap.set({ "n", "v" }, "<c-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<cr>")
  vim.keymap.set({ "n", "v" }, "<c-0>", ":lua vim.g.neovide_scale_factor = 1<cr>")
end

local function open_gemini_terminal()
  vim.cmd("rightbelow vsp")
  vim.api.nvim_win_set_width(0, math.floor(vim.o.columns * 0.25))
  vim.cmd("terminal gemini")
  vim.cmd("startinsert")
end

vim.keymap.set("n", "<leader>fT", open_gemini_terminal, { desc = "Open gemini", noremap = true, silent = true })
