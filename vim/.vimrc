set nocompatible
filetype off

"package management
set runtimepath+=~/.vim/bundle/Vundle.vim

call vundle#begin('~/.vim/plugged')

Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdtree'
Plugin 'ycm-core/YouCompleteMe'

call vundle#end()

"editing
syntax on

set syntax=whitespace

set number
set tabstop=4
set shiftwidth=4
set expandtab

set backspace=indent,eol,start

set list
set listchars=eol:¬,space:·

set incsearch
set hlsearch

"mappings
map gn :bnext<cr>
map gp :bprevious<cr>
map gd :bdelete<cr>

imap jk <ESC>
imap kj <ESC>

"colors
if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme tender

"terminal
set termwinsize=12x0
set splitbelow

"term
execute "set <M-t>=\et"
nnoremap <M-t> :term<CR>

"NERDTree
let g:AutoPairsShortcutToggle = '<C-P>'
let NERDTreeShowHidden = 1 
execute "set <M-e>=\ee"
nnoremap <M-e> :NERDTreeToggle<CR>
