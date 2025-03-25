-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local wk = require("which-key")

-- escape insert mode using jk
map("i", "jk", "<Esc>", { desc = "Exit insert mode with jk", silent = true })

-- Adding group in whichkey for run
wk.add({
  { "<leader>r", icon = { icon = "󰜎", color = "red" }, group = "run" },
})

-- Which keymaps for code runner
vim.keymap.set("n", "<leader>rc", ":RunCode<CR>", { desc = "Run Code", noremap = true, silent = false })
vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { desc = "Run File", noremap = true, silent = false })
vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { desc = "Run Project", noremap = true, silent = false })
