return {
  {
    'tpope/vim-projectionist',
    config = function()
      vim.g.projectionist_heuristics = {
        ['*.ts'] = {
          ['*.ts'] = {
            alternate = '{}.spec.ts',
            type = 'source',
          },
          ['*.spec.ts'] = {
            alternate = '{}.ts',
            type = 'test',
          },
        },
      }
    end,
  },
}
