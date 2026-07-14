return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      gotmpl = {
        "tmpl",
        "gotmpl",
      },
      zshcs = {
        filetypes = { "zsh", "sh" },
        cmd = { "zshcs" },
      },
    },
  },
}
