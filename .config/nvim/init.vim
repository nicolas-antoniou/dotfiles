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
map <silent>zz :q!<CR>
map <silent>zs :wq!<CR>
set clipboard+=unnamedplus
set tabstop=4 
set softtabstop=4
set noerrorbells
set expandtab
set smartindent
set nu
set nowrap
"set undodir=~/.nvim/undodir
"set undofile
set incsearch
set shiftwidth=4
set termguicolors
set smartcase
set ignorecase
set mouse=a
set noshowmode
set title
let &titleold="Terminal"

"Save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

"Replace all is aliased to S.
nnoremap S :%s//g<Left><Left>

xnoremap <silent>K :move '<-2<CR>gv-gv
xnoremap <silent>J :move '>+1<CR>gv-gv

call plug#begin('~/.config/nvim/plugged')
Plug 'sainnhe/gruvbox-material'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'kevinhwang91/rnvimr'
Plug 'tpope/vim-surround'
Plug 'ap/vim-css-color'
call plug#end()

let g:lightline = {
      \ 'colorscheme': 'Tomorrow_Night',
      \ }
colorscheme gruvbox-material
let g:gruvbox_material_palette = 'material'

let mapleader = " "

nnoremap <silent> <leader>o :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>
nnoremap <leader>ps :Files<CR>
nnoremap <leader>pg :Rg<CR>
nnoremap <silent> <leader>pr :RnvimrToggle<CR>
let $FZF_DEFAULT_COMMAND="fd --base-directory $HOME --type f --hidden -E '*.jpg' -E '*.jpeg' -E '.git' -E 'node_modules' -E '.nvim' -E '*.mp4' -E '*.png' --max-depth=4"
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }
source $HOME/.config/nvim/plug-config/rnvimr.vim
