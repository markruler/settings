" =============================================================================
" General
" =============================================================================
set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8
set fileformat=unix
set backspace=indent,eol,start
set autowrite
set viminfo='50,<1000

" =============================================================================
" Indentation
" =============================================================================
set shiftwidth=2
set tabstop=2
set expandtab
set autoindent
set pastetoggle=<F2>

autocmd FileType make setlocal noexpandtab

" =============================================================================
" Search
" =============================================================================
set hlsearch
set incsearch
set ignorecase
set smartcase
set nowrapscan

" =============================================================================
" UI/Display
" =============================================================================
syntax on
set background=dark
set cursorline
set colorcolumn=80
set showcmd
set showmatch
set showmode
set laststatus=2
set statusline+=%F::%l,%c
set visualbell

" Trailing whitespace highlight
highlight TrailingWhitespace ctermbg=red guibg=red
match TrailingWhitespace /\s\+$/

" =============================================================================
" Plugins
" =============================================================================
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
" GitGutterToggle
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'

call plug#end()
