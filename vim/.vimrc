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
Plugin 'puremourning/vimspector'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
call vundle#end()

"editing
syntax on

set syntax=whitespace

set hidden

set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab

set backspace=indent,eol,start

set list
set listchars=eol:¬,space:·

set incsearch
set hlsearch

"mappings
nnoremap gn :bnext<cr>
nnoremap gp :bprevious<cr>
nnoremap gd :bdelete<cr>
nnoremap gl :ls<CR>:b<Space>

nnoremap <C-t> :Files<CR>
nnoremap <C-f> :Rg<CR>

imap jk <ESC>
imap kj <ESC>

:nnoremap <silent> <Esc><Esc> :noh<CR>

"colors
"if (has("termguicolors"))
" set termguicolors
"endif

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

"vimspector
let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_install_gadgets = ['vscode-cpptools']

"split resizing
execute "set <M-k>=\ek"
:nnoremap <M-k> :resize -1<CR>
execute "set <M-j>=\ej"
:nnoremap <M-h> :vertical resize -1<CR>
execute "set <M-h>=\eh"
:nnoremap <M-j> :resize +1<CR>
execute "set <M-l>=\el"
:nnoremap <M-l> :vertical resize +1<CR>

"ycm
let g:ycm_confirm_extra_conf = 0

"vim-visual-multi
let g:VM_maps = {}
let g:VM_maps["Add Cursor Down"] = '<C-j>'   " new cursor down
let g:VM_maps["Add Cursor Up"] = '<C-k>'   " new cursor up

