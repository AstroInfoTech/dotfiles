return {
  "stevearc/aerial.nvim",
  opts = {
    layout = {
      -- Determines the default direction to open the aerial window. The 'prefer'
      -- options will open the window in the other direction *if* there is a
      -- different buffer in the way of the preferred direction
      -- Enum: prefer_right, prefer_left, right, left, float
      default_direction = "right",
      resize_to_content = true,
    },
    -- open_automatic = true,
    autojump = true,
  },
}
