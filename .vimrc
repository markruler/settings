syntax on
set encoding=utf-8
set fileencodings=utf-8
set shiftwidth=2
set tabstop=2
set autoindent
set paste
set expandtab

set autowrite
set backspace=indent,eol,start
set cindent
set ff=unix
set colorcolumn=80
set hls
set incsearch
set ignorecase
set laststatus=2
set showcmd
set showmatch
set showmode
set smartcase
set statusline+=%F::%l,%c
set ruler
set viminfo='50,<1000
"set history=1000

au FileType make setlocal noexpandtab

highlight TailingWhitespace ctermbg=red guibg=red

set background=dark
set cul
set nowrapscan
set tenc=utf-8
set visualbell

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
