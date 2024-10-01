-- Options
-- -------

local opt = vim.opt

opt.autoindent = true -- take indent for new line from previous line
opt.autoread = true -- automatically read file when changed outside of Vim
opt.background = "dark" -- "dark" or "light", used for highlight colors
opt.backspace = "indent,eol,start" -- how backspace works at start of line
opt.clipboard:append("unnamedplus") -- use the clipboard as the unnamed register
opt.cursorline = true -- highlight the screen line of the cursor
opt.expandtab = true -- use spaces when <Tab> is inserted
opt.ignorecase = true -- ignore case in search patterns
opt.list = true -- show <Tab> and <EOL>
opt.listchars.extends = "·" -- characters for displaying in list mode
opt.number = true -- show line number in front of each line
opt.relativenumber = true -- show relative line number in front of each line
opt.ruler = true -- show cursor line and column in the status line
opt.smartcase = true -- no ignore case when pattern has uppercase
opt.smarttab = true -- use 'shiftwidth' when inserting <Tab>
opt.shiftwidth = 2 -- number of spaces to use for (auto)indent step
opt.splitbelow = true -- new window from split is below the current one
opt.splitright = true -- new window is put right of the current one
opt.softtabstop = 2 -- number of spaces that <Tab> uses while editing
opt.scrolloff = 5 -- minimum number of lines above and below cursor
opt.tabstop = 2 -- number of spaces that <Tab> in file uses
opt.wrap = false -- long lines do not wrap and continue on the next line

-- Colorscheme
-- -----------

local cmd = vim.cmd

cmd 'colorscheme nord'

-- Keymaps
-- -------

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>l") -- use jk to exit insert mode
keymap.set("n", "x", '"_x') -- delete single character without copying into register
keymap.set({"n", "v"}, "-", "$") -- use - to move to the end of line
keymap.set("n", "S", "i<cr><Esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>`w") -- use S to split lines, inverse of J
keymap.set("v", "y", "ygv<ESC>") -- keep cursor at the end of selection after yank
keymap.set("n", "Y", "y$") -- use Y to copy from the cursor position until the end of line
