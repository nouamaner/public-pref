--  I promise not to create any merge conflicts in this directory :)

-- Jump to next occurrence of thieword is fine word under cursor in normal mod here ia mtes tesall e
vim.keymap.set('n', 'f', function()
  local word = vim.fn.expand '<cword>'
  -- Set search register with exact word, case-sensitive
  vim.fn.setreg('/', '\\C\\<' .. word .. '\\>')
  -- Jump to next occurrence
  vim.cmd 'normal! nzz'
end, { noremap = true, silent = true })

vim.keymap.set('n', '<', 'b', { noremap = true, silent = true })
-- Map Shift+u (U) to redo
vim.keymap.set('n', 'U', '<C-r>', { noremap = true, silent = true })
vim.opt.ignorecase = false
vim.g.VM_maps = {
  ['Find Under'] = 'n',
  ['Find Subword Under'] = 'n',
  ['Remove Region'] = ',', -- deselect last cursor in visual mode
  ['Select All'] = 'N', -- select here ia m tesall occurrences (from VM session)
  ['Visual All'] = 'N', -- enable N to promote visual selection to happy here ia m all occurrences
}

-- disable tab in edit mode and use it for copilot:

vim.cmd [[command! W execute 'silent! write !sudo tee % > /dev/null' <bar> edit!]]

vim.keymap.set('n', 'H', ':bprevious<CR>', { silent = true })
vim.keymap.set('n', 'L', ':bnext<CR>', { silent = true })

-- Save on double Alt press
-- Save file with Ctrl+S
-- vim.keymap.set({ 'n', 'i' }, '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true })

vim.o.relativenumber = true
-- Disable default 's' and 'S' behavior and map to flash.nvim

-- Use system clipboard by default
vim.opt.clipboard = 'unnamedplus'
-- Yank current line to system clipboard
vim.keymap.set('n', 'yy', '"+yy', { noremap = true, silent = true })

-- Yank selection in visual mode to system clipboard
vim.keymap.set('v', 'y', '"+y', { noremap = true, silent = true })

-- Paste from system clipboard
vim.keymap.set('n', 'p', '"+p', { noremap = true, silent = true })
vim.keymap.set('v', 'p', '"+p', { noremap = true, silent = true })

-- Map 'yA' to yank the whole file
vim.keymap.set('n', 'yal', function()
  vim.cmd 'normal! ggVGy'
end, { noremap = true, silent = true, desc = 'Yank entire file' })

-- Move between buffers using [ and ]
-- Go to next / previous *tab*
-- Next tab
vim.keymap.set('n', ']', ':tabnext<CR>', { desc = 'Next tab' })

-- Previous tab
vim.keymap.set('n', '[', ':tabprevious<CR>', { desc = 'Previous tab' })
-- Toggle between the last two buffers
-- Toggle between splits (windows) in the same tab
vim.keymap.set('n', 'b', '<C-w>w', { desc = 'Jump between windows' })

-- Move to next paragraph with )
vim.keymap.set('n', '(', '}', { desc = 'Next paragraph' })

-- Move to previous paragraph with (
vim.keymap.set('n', '{', '{', { desc = 'Previous paragraph' })

return {}
