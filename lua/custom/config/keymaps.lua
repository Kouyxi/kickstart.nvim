local keymap = vim.keymap

keymap.set('n', '<C-a>', 'ggVG')
keymap.set('n', '<C-s>', '<cmd>w<cr>')

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Paste without yanking
-- keymap.set('x', 'p', 'P')
keymap.set({ 'n', 'x' }, '<leader>p', '"0p')

keymap.set('n', '<leader>q', '<cmd>q<cr>')
keymap.set('n', '<leader>w', '<cmd>w<cr>')
keymap.set('n', '<leader>x', '<cmd>x<cr>')

keymap.set('n', 'j', [[v:count?'j':'gj']], { noremap = true, expr = true })
keymap.set('n', 'k', [[v:count?'k':'gk']], { noremap = true, expr = true })

keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Split
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Center cursor on scroll
keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')

keymap.set('n', '<leader>y', '<CMD>Bpytop<CR>')

keymap.set('n', '<C-p>', ':Telescope find_files<CR>')

keymap.set('n', '<A-j>', ':m .+1<CR>==') -- move line up(n)
keymap.set('n', '<A-k>', ':m .-2<CR>==') -- move line down(n)
keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv") -- move line up(v)
keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv") -- move line down(v)

-- keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {}) -- next buffer
-- keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {}) -- previous buffer

-- Mapeamento de teclas para 'next' e 'prev' usando nvchad.tabufline
vim.api.nvim_set_keymap('n', '<Tab>', ':lua require("nvchad.tabufline").next()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':lua require("nvchad.tabufline").prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'tw', ':lua require("nvchad.tabufline").close_buffer()<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<A-v>', ':lua require("nvchad.term").toggle { pos = "sp", size = 0.3 }<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-t>', ':lua require("nvchad.term").toggle { pos = "float", size = 0.5}<CR>', { noremap = true, silent = true })

keymap.set('n', 'tw', ':Bdelete!<CR>', {}) -- close buffer
