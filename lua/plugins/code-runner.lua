return {
  "CRAG666/code_runner.nvim",
  opts = {
    focus = false,
    mode = "toggleterm",
    on_open = function(t)
      local venv_path = require("venv-selector").get_active_path()
      if venv_path then
        local cmd = string.format("source %s/bin/activate", venv_path)
        require("toggleterm").exec(cmd)
      end
    end,
    filetype = {
      python = "python3 -u",
    },
  },
}
