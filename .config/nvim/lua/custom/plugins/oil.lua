return {
  'stevearc/oil.nvim',
  lazy = true, -- load only when needed
  cmd = 'Oil', -- also load on :Oil
  keys = {
    -- load Oil when pressing '-' and set the keymap
    {
      '-',
      function()
        require('oil').open_float()
      end,
      desc = 'Open parent dir in float',
    },
  },
  config = function()
    local oil = require 'oil'
    oil.setup {
      float = {
        padding = 2,
        border = 'rounded',
        max_width = 80,
        max_height = 20,
        win_options = { winblend = 0 },
      },
      -- other settings if you want
    }
  end,
}
