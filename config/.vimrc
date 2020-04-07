"~/.vimrc
"http://vimdoc.sourceforge.net/htmldoc/options.html
"https://wiki.ubuntu-kr.org/index.php/Vim
"https://github.com/johngrib/simple_vim_guide/blob/master/md/vimrc.md
"https://www.shortcutfoo.com/blog/top-50-vim-configuration-options/
"boolean 옵션. /검색시 한 글자씩 입력할 때마다 검색을 수행합니다.s
":se[t] all 입력 시 모든 옵션 볼 수 있음
"set relativenumber

set nu "number
syntax on "구문강조 사용
colorscheme desert "color 폴더에 colorscheme 설치 필요 / desert는 기본 설치
set background=dark "하이라이팅 lihgt / dark
set autoindent
set shiftwidth=2 "autoindent width
set expandtab "boolean 옵션. 탭키를 누르면 탭이 아니라 설정한 수의 스페이스가 입력된다.
set ts=2 "tabstop, expandtab의 수
set softtabstop=2
set cindent "C Language indent
set cul "cursorline, boolean 옵션. 커서가 있는 라인을 하이라이트처리해줍니다.
set cuc "cursorcolumn, boolean 옵션. 커서가 있는 컬럼을 하이라이트 처리해준다.
set hls "hlsearch, 검색어 강조
set is "incsearch, boolean 옵션. /검색시 한 글자씩 입력할 때마다 검색을 수행합니다.
set scs "smartcase, boolean 옵션. 검색시 검색어에 대문자가 포함되어 있다면 ignorecase옵션을 무시합니다. 기본값은 off.
set ic "ignorecase, 검색시 대소문자 무시
set laststatus=2 "status line
"set stl "statusline, 화면 하단의 상태표시줄 형식을 편집할 수 있습니다. :help statusline
set nowrapscan "검색할 때 문서의 끝에서 처음으로 안돌아감
set vb "visualbell, boolean 옵션. 에러가 발생했을 때 삑 소리를 내지 않고 화면으로 알려 줍니다. 기본값은 off.
set ruler "화면 우측 하단에 현재 커서의 위치(줄,칸) 표시
set fileencoding=utf-8 "파일저장인코딩
set tenc=utf-8 "터미널 인코딩
set hi=1000 "history, number 옵션. : 명령어의 히스토리를 지정한 숫자만큼 기억합니다. 기본값은 50. .viminfo에 기록
set sbr=+++\ "showbreak, string 옵션. 한 줄이 너무 길어 여러 줄로 표현될 때, 아래쪽 줄들이 윗쪽 줄에서 이어짐을 설정한 기호를 사용해 가장 왼쪽에 표시합니다.
set sm "showmatch, boolean 옵션. 짝이 맞는 괄호에 하이라이팅 처리를 해 줍니다. 기본값은 off.