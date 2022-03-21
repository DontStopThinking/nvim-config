-----------------------------------------------------------
-- Neovim API aliases
-----------------------------------------------------------
local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

-----------------------------------------------------------
-- General
-----------------------------------------------------------
opt.mouse = 'a'	-- enable mouse support
opt.clipboard = 'unnamedplus'  -- Copy/paste to system clipboard
opt.swapfile = false                  -- Don't use swapfile
opt.completeopt = 'menuone,noselect'  -- Autocomplete options

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
cmd('colorscheme onedark')
opt.number = true					-- show line number
opt.showmatch = true                -- Highlight matching parenthesis
opt.splitbelow = true               -- Horizontal split to the bottom
--opt.colorcolumn = '80'              -- Line length marker at 80 columns
opt.termguicolors = true            -- Enable 24-bit RGB colors

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true                -- Use spaces instead of tabs
opt.shiftwidth = 4                  -- Shift 4 spaces when tab
opt.tabstop = 4                     -- 1 tab == 4 spaces
opt.smartindent = true              -- Autoindent new lines

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.lazyredraw = true               -- Faster scrolling

-----------------------------------------------------------
-- Autocommands
-----------------------------------------------------------

-- Remove whitespace on save
cmd [[au BufWritePre * :%s/\s\+$//e]]

-- 2 spaces for selected filetypes
cmd [[
  autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml setlocal shiftwidth=2 tabstop=2
]]
