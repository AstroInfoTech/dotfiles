return {
  {
    "folke/snacks.nvim",
    lazy = false,
    ---@type snacks.Config
    opts = {

      picker = {
        follow = true,
        layouts = {
          default = {
            layout = {
              box = "horizontal",
              backdrop = false,
              width = 0.97,
              height = 0.97,
              border = "none",
              {
                box = "vertical",
                width = 0.4,
                {
                  win = "input",
                  height = 1,
                  border = "rounded",
                  title = "{title} {live} {flags}",
                  title_pos = "center",
                },
                { win = "list", title = " Results ", title_pos = "center", border = "rounded" },
              },
              {
                win = "preview",
                title = "{preview:Preview}",
                width = 0.6,
                border = "rounded",
                title_pos = "center",
              },
            },
          },
        },
      },
    },

    ---@class snacks.image.Config
    ---@field enabled? boolean enable image viewer
    ---@field wo? vim.wo|{} options for windows showing the image
    ---@field bo? vim.bo|{} options for the image buffer
    ---@field formats? string[]
    --- Resolves a reference to an image with src in a file (currently markdown only).
    --- Return the absolute path or url to the image.
    --- When `nil`, the path is resolved relative to the file.
    ---@field resolve? fun(file: string, src: string): string?
    ---@field convert? snacks.image.convert.Config
    image = {
      enabled = true,
      doc = {
        enabled = true,
        inline = true,
        render = true,
      },
    },
    ---@class snacks.statuscolumn.Config
    ---@field left snacks.statuscolumn.Components
    ---@field right snacks.statuscolumn.Components
    ---@field enabled? boolean
    statuscolumn = {
      left = { "mark", "sign" },
      enabled = true,
    },
  },
}
