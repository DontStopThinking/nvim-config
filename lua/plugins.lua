-- Reference: https://dev.to/vonheikemen/neovim-using-vim-plug-in-lua-3oom

local Plug = vim.fn['plug#']

vim.call('plug#begin', vim.fn.stdpath('config') .. '/plugged')

Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'joshdick/onedark.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn['TSUpdate']})
Plug 'phaazon/hop.nvim'

vim.call('plug#end')
