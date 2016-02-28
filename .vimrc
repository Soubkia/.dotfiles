" system vimrc file for MacVim
set nocompatible

" General
set mouse=a " enable mouse control in all modes
syntax enable
set nu " turn on line numbers

" Save last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  au BufRead,BufNewFile *.conf setf dosini
endif

" Whitespace
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Search
set ignorecase " case insensitive searching
set smartcase " search insensitive unless there is a captial in the pattern
set incsearch " Search as you type
set hlsearch " Highlight search terms
set cursorline " Highlight current line

" ==========================
" VIM-PLUG (PLUG-IN MANAGER)
" ==========================

call plug#begin('~/.vim/bundle')

Plug 'tpope/vim-sensible'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'abertsch/Menlo-for-Powerline'
Plug 'tpope/vim-fugitive'

call plug#end()

" Colorscheme
let g:molokai_original = 1
colorscheme molokai

" Airline
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_min_count = 1
let g:airline#extensions#tabline#tab_min_count = 1
let g:airline_powerline_fonts = 1
set guifont=Menlo\ for\ Powerline
