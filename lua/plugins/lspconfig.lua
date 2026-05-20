return {
  "neovim/nvim-lspconfig",
  -- LSP keymaps
  opts = {
    servers = {
      clangd = {
        filetypes = { "c", "cpp" },
      },
    },
  },
}
