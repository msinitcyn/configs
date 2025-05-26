set nocompatible
filetype off

"package management

call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/tagbar'
Plug 'preservim/nerdtree'
Plug 'ycm-core/YouCompleteMe'
Plug 'puremourning/vimspector'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'chrisbra/csv.vim'
Plug 'embear/vim-localvimrc'
Plug 'tpope/vim-dispatch'

call plug#end()

"editing
syntax on

set cindent
set cinoptions=g-1
autocmd FileType cpp setlocal cinoptions+=N-s

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

"close buffer and keep panel
nnoremap qq :bp<bar>sp<bar>bn<bar>bd<cr>

"close all the buffers except the current one
nnoremap gh :%bd<bar>e#<bar>bd#<cr>

"buffer navigation
nnoremap gn :bnext<cr>
nnoremap gp :bprevious<cr>
nnoremap gd :bdelete<cr>
"nnoremap gl :ls<cr>:b<Space>
nnoremap gl :Buffers<cr>

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

"tagbar
execute "set <M-m>=\em"
nnoremap <M-m> :TagbarToggle<CR>

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

" Allow local .vimrc files
set exrc
set secure

let g:localvimrc_ask = 0

set title

" These guys use mad non-breaking code https://github.com/puremourning/.vim-mac/blob/master/vimrc
set linebreak
set breakindent
set showbreak=>\
set breakindentopt=shift:2,min:64
