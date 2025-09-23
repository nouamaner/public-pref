return {
  'lewis6991/gitsigns.nvim',

  -- enable by defaut gitblame
  config = function()
    require('gitsigns').setup {
      current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
      vim.keymap.set('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', {}),
      vim.keymap.set('n', '<leader>gt', ':Gitsigns toggle_current_line_blame<CR>', {}),
      vim.keymap.set('n', '<leader>gd', ':Gitsigns diffthis<CR>', {}),
    }
  end,
}
