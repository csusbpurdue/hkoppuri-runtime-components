" ~/.vimrc — read by vim every time it starts.
" Lines starting with a double quote are comments.

" Basics
set nocompatible
syntax on
filetype plugin indent on
set encoding=utf-8
set backspace=indent,eol,start

" What you see
set number
set ruler
set showcmd
set laststatus=2
set showmatch
set scrolloff=5
set colorcolumn=80
set wildmenu

" Indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Makefiles require real tab characters
autocmd FileType make setlocal noexpandtab

" Searching
set incsearch
set hlsearch
set ignorecase
set smartcase

" Convenience
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
