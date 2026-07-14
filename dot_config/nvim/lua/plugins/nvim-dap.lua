return {
  "mfussenegger/nvim-dap",
  keys = {

    vim.keymap.set("n", "<leader>dv", function()
      require("nvim-dap-virtual-text").toggle()
    end, {
      desc = "Toggle DAP Virtual Text",
      silent = true,
    }),
    {
      vim.keymap.set("n", "<leader>dL", function()
        require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
      end, { desc = "Log Point Message" }),
    },
  },
}
