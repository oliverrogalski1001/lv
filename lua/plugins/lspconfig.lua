return {
  "neovim/nvim-lspconfig",
  -- LSP keymaps
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- keys[#keys + 1] = { "<C-k>", false, mode = "i" }
    keys[#keys + 1] =
      { "<C-n>", vim.lsp.buf.signature_help, mode = "i", desc = "Signature Help", has = "signatureHelp" }
    keys[#keys + 1] = { "gk", vim.lsp.buf.signature_help, mode = "n", desc = "Signature Help", has = "signatureHelp" }
    keys[#keys + 1] = { "<cr>", false, mode = "i" }
  end,
  opts = {
    capabilities = {
      workspace = {
        didChangeWatchedFiles = {
          dynamicRegistration = true,
        },
        folders = true,
      },
    },
  },
}
