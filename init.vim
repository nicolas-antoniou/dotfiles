nnoremap c "_c
set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set number relativenumber
set wildmode=longest,list,full
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map zz :q!<CR>
map zs :wq!<CR>
set clipboard+=unnamedplus
set tabstop=4 softtabstop=4
set noerrorbells
set expandtab
set smartindent
set nu
set nowrap
set undodir=~/.nvim/undodir
set undofile
set incsearch
set shiftwidth=4

set statusline=
set statusline+=%#IncSearch#
set statusline+=\ %y
set statusline+=\ %r
set statusline+=%#CursorLineNr#
set statusline+=\ %F
set statusline+=%= "Right side settings
set statusline+=%#Search#
set statusline+=\ %l/%L
set statusline+=\ [%c]

xnoremap J :move '<-2<CR>gv-gv
xnoremap K :move '>+1<CR>gv-gv

call plug#begin('~/local/share/nvim/plugged')
Plug 'gruvbox-community/gruvbox'
call plug#end()

colorscheme gruvbox
let mapleader = " "

nnoremap <silent> <leader>o :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>
nnoremap <leader>ps :Lexplore<CR>
