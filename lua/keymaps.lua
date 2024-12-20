-- [[ Custom Keymaps ]]

-- Enter netrw
-- Use <leader>pv to open the file explorer (netrw)
-- vim.api.nvim_set_keymap('n', '<leader>pv', ':Explore<CR>', { noremap = true, silent = true })

-- Use move commands to move blocks of code up and down
vim.api.nvim_set_keymap('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Always recenter cursor after moving up and down
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })

-- [[ Basic Keymaps ]]
-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.api.nvim_set_keymap('n', '<Esc>', ':nohlsearch<CR>', { noremap = true, silent = true })

-- Diagnostic keymaps
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true, desc = 'Go to previous [D]iagnostic message' })
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true, desc = 'Go to next [D]iagnostic message' })
vim.api.nvim_set_keymap(
  'n',
  '<leader>e',
  '<cmd>lua vim.diagnostic.open_float()<CR>',
  { noremap = true, silent = true, desc = 'Show diagnostic [E]rror messages' }
)
vim.api.nvim_set_keymap(
  'n',
  '<leader>q',
  '<cmd>lua vim.diagnostic.setloclist()<CR>',
  { noremap = true, silent = true, desc = 'Open diagnostic [Q]uickfix list' }
)

-- Exit terminal mode in the built-in terminal
vim.api.nvim_set_keymap('t', '<Esc><Esc>', '<C-\\><C-n>', { noremap = true, silent = true, desc = 'Exit terminal mode' })

-- Disable arrow keys in normal mode
vim.api.nvim_set_keymap('n', '<left>', ':echo "Use h to move!!"<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<right>', ':echo "Use l to move!!"<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<up>', ':echo "Use k to move!!"<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<down>', ':echo "Use j to move!!"<CR>', { noremap = true, silent = true })

-- Keybinds to make split navigation easier
-- vim.api.nvim_set_keymap('n', '<A-h>', '<C-w>h', { noremap = true, silent = true, desc = 'Move focus to the left window' })
-- vim.api.nvim_set_keymap('n', '<A-l>', '<C-w>l', { noremap = true, silent = true, desc = 'Move focus to the right window' })
-- vim.api.nvim_set_keymap('n', '<A-j>', '<C-w>j', { noremap = true, silent = true, desc = 'Move focus to the lower window' })
-- vim.api.nvim_set_keymap('n', '<A-k>', '<C-w>k', { noremap = true, silent = true, desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
