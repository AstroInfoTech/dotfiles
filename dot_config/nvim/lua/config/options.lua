-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- LSP Server to use for Rust.
-- Set to "bacon-ls" to use bacon-ls instead of rust-analyzer.
-- only for diagnostics. The rest of LSP support will still be
-- provided by rust-analyzer.
vim.g.lazyvim_rust_diagnostics = "rust-analyzer"

-- set to `true` to follow the main branch
-- you need to have a working rust toolchain to build the plugin
-- in this case.
vim.g.lazyvim_blink_main = false

-- Set to `false` to prevent "non-lsp snippets"" from appearing inside completion windows
-- Motivation: Less clutter in completion windows and a more direct usage of snippets
vim.g.lazyvim_mini_snippets_in_completion = false

-- In case you don't want to use `:LazyExtras`,
-- then you need to set the option below.
vim.g.lazyvim_picker = "snacks"

-- :FormatWith ruff_format のように使えるコマンドを定義
vim.api.nvim_create_user_command("FormatWith", function(opts)
  local formatter = opts.args
  if formatter == "" then
    print("フォーマッター名を指定してください")
    return
  end

  require("conform").format({ formatters = { formatter } })
  print("Formatted with: " .. formatter)
end, {
  nargs = 1,
  -- 補完を有効にしたい場合（登録されているフォーマッター一覧から選べる）
  complete = function()
    return vim.tbl_keys(require("conform").formatters)
  end,
})
