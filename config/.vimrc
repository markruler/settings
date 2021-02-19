"call plug#begin('~/.vim/plugged')
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"call plug#end()

"https://vimawesome.com/
"vim-airline
"vim-fugitive
"NERDTree
"vim-gitgutter
"vim-go

" https://tools.ietf.org/html/rfc2119
" MUST
filetype plugin indent on

" SHOULD
syntax on
colorscheme desert
"http://vimdoc.sourceforge.net/htmldoc/usr_05.html#vimrc-intro
":help vimrc

"http://vimdoc.sourceforge.net/htmldoc/options.html#options
"http://vimdoc.sourceforge.net/htmldoc/options.html#'compatible'
":help options

set bs=indent,eol,start "backspace, Each item allows a way to backspace over something
set bg=dark "background, When set to "dark", Vim will try to use colors that look good on a dark background.
set sw=2 "shiftwidth, Number of spaces to use for each step of (auto)indent.
set ts=2 "tabstop, Number of spaces that a <Tab> in the file counts for.
set nu "number, Print the line number in front of each line.                                                                                                                
set cul "cursorline, Highlight the screen line of the cursor with CursorLine |hl-CursorLine|.
set ai "autoindent
set et "expandtab, Use the appropriate number of spaces to insert a <Tab>.
set ls=2 "laststatus, The value of this option influences when the last window will have a status line
"set vb "visualbell, Use visual bell instead of beeping.
set ru "ruler, Show the line and column number of the cursor position, separated by a comma.
set fenc=utf-8 "fileencoding, Sets the character encoding for the file of this buffer.
set tenc=utf-8 "termencoding, Encoding used for the terminal.
set hi=200 "history, A history of ":" commands, and a history of previous search patterns are remembered.
set sbr=+++\ "showbreak, String to put at the start of lines that have been wrapped.

">>>INDENT<<<
set autoindent
set cindent
set smartindent
set tabstop=2
set shiftwidth=2

">>>SEARCH<<<
set hls "hlsearch, highlight matches with the last used search pattern.
set is "incsearch, While typing a search command, show where the pattern, as it was typed so far, matches.
set ic "ignorecase, Ignore case in search patterns.
set nows "nowrapscan, do not wrap around
