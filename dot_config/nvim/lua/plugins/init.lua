-- :FormatWith black や :FormatWith ruff_format のように打てるカスタムコマンド
vim.api.nvim_create_user_command("FormatWith", function(opts)
  local formatter = opts.args
  require("conform").format({ formatters = { formatter }, async = true })
end, {
  nargs = 1,
  -- Tabキーでconformに登録されているフォーマッター一覧を補完できるようにする
  complete = function()
    return vim.tbl_keys(require("conform").formatters)
  end,
})

vim.filetype.add({
  extension = {
    gotmpl = "gotmpl",
  },
  pattern = {
    [".*/templates/.*%.tpl"] = "helm",
    [".*/templates/.*%.ya?ml"] = "helm",
    ["helmfile.*%.ya?ml"] = "helm",
  },
})

return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {

      zsh = { "shellcheck" },
      sh = { "shellcheck" },
      bash = { "shellcheck" },
    },
    linters = {
      shellcheck = {
        args = { "--severity=style" },
      },
    },
  },
}
