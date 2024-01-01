syntax on
set runtimepath+=~/.vim
set syntax=whitespace

set number
set tabstop=4
set shiftwidth=4
set expandtab

set backspace=indent,eol,start

set list
set listchars=eol:¬,space:·

map gn :bnext<cr>
map gp :bprevious<cr>
map gd :bdelete<cr>

imap jk <ESC>
imap kj <ESC>

if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme tender
