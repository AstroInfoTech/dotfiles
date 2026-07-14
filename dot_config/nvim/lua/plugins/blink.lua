return {
  "saghen/blink.cmp",
  dependencies = {
    "saghen/blink.compat",
    "rcarriga/cmp-dap",
  },
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  sources = {
    -- adding any nvim-cmp sources here will enable them
    -- with blink.compat
    compat = { "dap" },
  },
  signature = { enabled = true },
}
