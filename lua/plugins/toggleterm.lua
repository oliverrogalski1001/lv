return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    direction = "bottom",
  },
  config = function()
    require("toggleterm").setup()
  end,
}
