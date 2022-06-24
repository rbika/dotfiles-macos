set encoding=utf8

" Important
" ---------
set nocompatible " Disable Vi compatible behave

" Moving around, searching and patterns
" -------------------------------------
set ignorecase " Ignore case when using a search pattern
set smartcase " Override 'ignorecase' when pattern has upper case characters
set incsearch " Show match for partly typed search command

" Displaying text
" ---------------
set number " Show the line number for each line
set nowrap " Disable long lines wrap
set scrolloff=5 " Screen lines to show around the cursor
set list " Show trailing spaces
set listchars=tab:\ \ ,trail:· " List of strings used for list mode

" Syntax, highlighting and spelling
" ---------------------------------
filetype on " Type of file; triggers the FileType event
syntax on " Enable syntax highlighting
set hlsearch " Highlight matches for the last used search pattern
set background=dark " Background color brightness
colorscheme codedark " Default colorscheme

" Messages and info
" -----------------
set ruler " Show cursor position below each window

" Editing text
" ------------
set backspace=indent,eol,start " Proper Backspace behavior

" Tabs and indenting
" ------------------
set tabstop=2 " Number of spaces a <Tab> in the text stands for
set shiftwidth=2 " Number of spaces used for each step of (auto)indent
set softtabstop=2 " If non-zero, number of spaces to insert for a <Tab>
set smarttab " A <Tab> in an indent inserts 'shiftwidth' spaces
set expandtab " Expand <Tab> to spaces in Insert mode
set autoindent " Automatically set the indent of a new line
set smartindent " Do clever autoindenting

" Mapping
" -------
inoremap jk <Esc>

" Map $ to -
nnoremap - $
vnoremap - $h

" Map S to split lines. Inverse of J
nnoremap S i<cr><Esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>`w

" Keep cursor at the end of selection after yank
vnoremap y ygv<Esc>

" Map Y to copy from the cursor position until the end of line
nnoremap Y y$

" Reading and writing files
" -------------------------
set fileformats+=mac " List of file formats to look for when editing a file
set nobackup " Turn off backup files
set autoread " Automatically read a file when it was modified outside of Vim

" The swap file
" -------------
set noswapfile " Turn off swap files

" Autocommands
" ------------
autocmd BufNewFile,BufRead *.git/{,modules/**/}{COMMIT_EDIT,MERGE_}MSG
    \ set ft=gitcommit

augroup Gitcommit
    autocmd!
    autocmd FileType gitcommit set textwidth=72
    autocmd FileType gitcommit set colorcolumn=73
augroup END
