vim.keymap.set({ 'n', 'x', 'o' }, 's', function()
  local gi = vim.go.ignorecase
  local gs = vim.go.smartcase
  vim.go.ignorecase = true
  vim.go.smartcase = true
  require('flash').jump()
  vim.go.ignorecase = gi
  vim.go.smartcase = gs
end, { noremap = true, silent = true, desc = 'Flash Char Search' })

vim.keymap.set({ 'n', 'x', 'o' }, 'S', function()
  require('flash').treesitter_search()
end, { noremap = true, silent = true, desc = 'Flash Pattern Search' })

return {
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    opts = {
      modes = {
        search = {
          enabled = true,
          highlight = { backdrop = false },
          jump = true,
        },
        char = {
          enabled = false, -- 🚀 disable Flash hijacking f/F
        },
      },
    },
  },
}
