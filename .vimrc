syntax on                                                                       
set showcmd
set statusline+=%F::%l,%c
set showmatch
set ignorecase
set smartcase
set incsearch
set autowrite
set ruler
set autoindent
set cindent
set shiftwidth=2
set tabstop=2
set expandtab
set laststatus=2
set backspace=indent,eol,start
set showmode
set hls
set colorcolumn=80
set ff=unix
set fileencodings=utf8
set viminfo='50,<1000
"set history=1000
au FileType make setlocal noexpandtab

highlight TailingWhitespace ctermbg=red guibg=red

set cul
set background=dark
set nowrapscan
set visualbell
set tenc=utf-8

call plug#begin('~/.vim/plugged')
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter' "GitGutterToggle
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'

call plug#end()
