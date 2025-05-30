return {
  "akinsho/bufferline.nvim",
  opts = {
    highlights = require("catppuccin.groups.integrations.bufferline").get(),
    options = {
      numbers = "ordinal",
      indicator = {
        style = "icon",
      },
    },
  },
}
