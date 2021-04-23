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
set tabstop=4 
set softtabstop=4
set noerrorbells
set expandtab
set smartindent
set nu
set nowrap
set undodir=~/.nvim/undodir
set undofile
set incsearch
set shiftwidth=4
set termguicolors

set noshowmode
let g:currentmode={'n':'NORMAL','v':'VISUAL','V':'V·LINE','':'V·BLOCK',
      \ 'i':'INSERT','R':'R','Rv':'V·REPLACE','c':'COMMAND'}

set statusline=
set statusline+=%#IncSearch#
set statusline+=\ %{g:currentmode[mode()]}
set statusline+=\ %r
set statusline+=%#CursorLineNr#
set statusline+=\ %F
set statusline+=\ %y
set statusline+=%= "Right side settings
set statusline+=%#Search#
set statusline+=\ %l/%L
set statusline+=\ [%c]

xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

call plug#begin('~/local/share/nvim/plugged')
Plug 'sainnhe/gruvbox-material'
call plug#end()

colorscheme gruvbox-material
let g:gruvbox_material_palette = 'material'

let mapleader = " "

nnoremap <silent> <leader>o :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>
nnoremap <leader>ps :Lexplore<CR>
