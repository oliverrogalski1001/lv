-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")

-- disable keymaps

local mappings_i = {
  ["<C-b>"] = { "<ESC>^i", "Beginning of line" },
  ["<C-e>"] = { "<End>", "End of line" },

  -- navigate within insert mode
  ["<C-h>"] = { "<Left>", "Move left" },
  ["<C-l>"] = { "<Right>", "Move right" },
  ["<C-j>"] = { "<Down>", "Move down" },
  ["<C-k>"] = { "<Up>", "Move up" },
}

local mappings_n = {
  ["<leader>s"] = { "<cmd>w!<cr>", "Save File" },
  ["<leader>S"] = { "<cmd>wa!<cr>", "Save All Files" },
  ["<leader>r"] = { "<cmd>RunCode<CR>", "run code" },
  ["<leader>x"] = { "<cmd>bp<bar>sp<bar>bn<bar>bd<CR>", "close buffer" },
}

local term_mappings = {
  ["<C-;>"] = { "<cmd>ToggleTerm<CR>", "toggle term" },
}

wk.register(mappings_i, { mode = "i" })
wk.register(mappings_n, { mode = "n" })
wk.register(term_mappings, { mode = { "n", "i", "t" } })
