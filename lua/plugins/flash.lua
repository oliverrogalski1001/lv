return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
  -- stylua: ignore
  keys = {
    { "s", mode ={"o"}, false },
    { "S", mode ={"o"}, false },
    { "s", mode = { "n", "x" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
  },
}
