-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")

wk.add({
  mode = { "i" },
  { "<C-b>", "<ESC>^i", desc = "Beginning of line" },
  { "<C-e>", "<End>", desc = "End of line" },
  { "<C-h>", "<Left>", desc = "Move left" },
  { "<C-j>", "<Down>", desc = "Move down" },
  { "<C-k>", "<Up>", desc = "Move up" },
  { "<C-l>", "<Right>", desc = "Move right" },
})

wk.add({
  { "<leader>S", "<cmd>wa!<cr>", desc = "Save All Files" },
  { "<leader>r", "<cmd>RunCode<CR>", desc = "run code" },
})
-- { "<leader>x", "<cmd>bp<bar>sp<bar>bn<bar>bd<CR>", desc = "close buffer" },
-- { "<leader>s", "<cmd>w!<cr>", desc = "Save File" },

wk.add({
  { "<C-;>", "<cmd>ToggleTerm<CR>", desc = "toggle term", mode = { "i", "n", "t" } },
})
