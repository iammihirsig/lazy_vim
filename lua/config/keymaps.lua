-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- set leader key to space
vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness

---------------- General Keymaps -------------------
-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

---------------- Which Keymaps -------------------
-- Defining whichkey for easy use
local wk = require("which-key")

-- Adding group in whichkey for run
wk.add({
  { "<leader>r", icon = { icon = "󰜎", color = "azure" }, group = "run" },
})

-- Which keymaps for code runner
vim.keymap.set("n", "<leader>rc", ":RunCode<CR>", { desc = "Run Code", noremap = true, silent = false })
vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { desc = "Run File", noremap = true, silent = false })
vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { desc = "Run Project", noremap = true, silent = false })

-- Adding group in whichkey for liveserver
-- wk.add({
--   { "<leader>rl", icon = { icon = "", color = "orange" }, group = "liveserver" },
--   { "<leader>rls", icon = { icon = "", color = "yellow" } },
--   { "<leader>rlS", icon = { icon = "", color = "red" } },
-- })
--
-- -- Adding keymap under liveserver group for managing liveserver
-- vim.keymap.set(
--   "n",
--   "<leader>rls",
--   ":LiveServerStart<CR>",
--   { desc = "Start LiveServer", noremap = true, silent = false }
-- )
-- vim.keymap.set("n", "<leader>rlS", ":LiveServerStop<CR>", { desc = "Stop LiveServer", noremap = true, silent = false })
