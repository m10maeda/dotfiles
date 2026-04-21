" 設定
set encoding=utf-8
set fileencoding=utf-8

" 見た目
syntax enable
filetype plugin indent on

set number
set laststatus=2
set showcmd
set background=dark
set termguicolors

let g:lightline = {'colorscheme': 'catppuccin_mocha'}

" インデント
set expandtab
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2

" 操作
set virtualedit=onemore

" プラグイン
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf'
Plug 'catppuccin/vim'

call plug#end()
