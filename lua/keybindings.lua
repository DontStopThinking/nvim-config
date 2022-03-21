local map = vim.api.nvim_set_keymap

map('n', 'ff', '<cmd>Telescope find_files<cr>', {})
map('n', 'fg', '<cmd>Telescope live_grep<cr>', {})
map('n', 'fb', '<cmd>Telescope buffers<cr>', {})
map('n', 'fh', '<cmd>Telescope help_tags<cr>', {})
map('n', '<M-w>', '<C-w>w', {}) -- Alt+w to switch betweens panes
map('n', 'vp', '<cmd>vsplit<cr>', {})
