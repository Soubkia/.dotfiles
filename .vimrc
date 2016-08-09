" system vimrc file for MacVim
set nocompatible

" General
let mapleader=" "
nnoremap ; :
set mouse=a " enable mouse control in all modes
syntax enable
set nu " turn on line numbers
set showmatch " show matching parenthesis
set history=1000 " remember more commands and search history
set undolevels=1000 " use many muchos levels of undo
nnoremap <leader>q :q<CR>
nnoremap <leader>qq :q!<CR>
set timeoutlen=150 " mapping delay
set ttimeoutlen=0 " key code delay

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
set smarttab " insert tabs on the start of a line according to
             " shiftwidth, not tabstop

" Search
set ignorecase " case insensitive searching
set smartcase " search insensitive unless there is a captial in the pattern
set incsearch " Search as you type
set hlsearch " Highlight search terms
set cursorline " Highlight current line
" clear the search buffer with ,/
nmap <silent> ,/ :nohlsearch<CR> 

" Easy window navigation
map <C-n> :vnew<CR>
map <C-b> :new<CR>
map == :vertical resize +5<CR>
map -- :vertical resize -5<CR>
map ++ :resize +5<CR>
map __ :resize -5<CR>
map <C-q> <C-w>q
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Copy/Paste
vnoremap <C-c> :w !pbcopy<CR><CR>
nnoremap <C-v> :r !pbpaste<CR><CR>

" Tabbing
nnoremap th :tabfirst<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnew<CR>
nnoremap td :tabclose<CR>

" Builds
set autowrite " save before running make
nnoremap <leader>r :Make<CR>

" FZF
nnoremap oo :FZF<space>
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'

" Language Specific
autocmd BufRead,BufNewFile *.jade setlocal ft=jade

" ==========================
" VIM-PLUG (PLUG-IN MANAGER)
" ==========================

call plug#begin('~/.vim/bundle')

Plug 'tpope/vim-sensible'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'abertsch/Menlo-for-Powerline'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'digitaltoad/vim-pug'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-dispatch'

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
