-- -- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Personal keymaps
vim.keymap.set({ 'n', 'v' }, 'J', '5j')
vim.keymap.set({ 'n', 'v' }, 'K', '5k')
vim.keymap.set('n', '<C-s>', ':w<CR>')
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>')
vim.keymap.set({ 'n', 'i' }, '<C-a>', '<Esc>gg_vG$')
vim.keymap.set('n', '<leader>u', function()
  vim.cmd.UndotreeToggle()
  vim.cmd.UndotreeFocus()
end)
vim.keymap.set({ 'n' }, '<C-P>', '"_diwP')

-- Insert blank line
vim.keymap.set('n', '<Enter>', 'o<Esc>')
vim.keymap.set('n', '<S-Enter>', 'O<Esc>')

-- Insert mode keymaps
vim.keymap.set('i', '£', '<Esc>A')
vim.keymap.set('i', '<C-h>', '<C-Left>')
vim.keymap.set('i', '<C-l>', '<C-Right>')
vim.keymap.set('i', "<A-'>", '<Esc>A {<CR><CR>}<Up>')
