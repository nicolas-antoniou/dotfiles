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
cnoremap w!! execute 'silent! write !SUDO_ASKPASS=`which ssh-askpass` sudo tee % >/dev/null' <bar> edit!

"Replace all is aliased to S.
nnoremap S :%s//g<Left><Left>

xnoremap <silent>K :move '<-2<CR>gv-gv
xnoremap <silent>J :move '>+1<CR>gv-gv

call plug#begin('~/.config/nvim/plugged')
Plug 'sainnhe/gruvbox-material'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
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

lua << EOF
local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous
      },
    },
  }
}
EOF

nnoremap <silent> <leader>o :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>
"nnoremap <silent> <leader>ps :Telescope find_files find_command=fd,--hidden,--follow,--exclude,'.git',--exclude,'node_modules'<CR>
nnoremap <silent> <leader>ps :Telescope find_files find_command=fd,-E,Pictures,-E,Videos,--type,f,-H<CR>
nnoremap <silent> <leader>pg :Telescope live_grep<CR>
nnoremap <silent> <leader>pr :RnvimrToggle<CR>
source $HOME/.config/nvim/plug-config/rnvimr.vim
