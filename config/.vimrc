"~/.vimrc
"http://vimdoc.sourceforge.net/htmldoc/options.html
":se[t] all 입력 시 모든 옵션 볼 수 있음
"set relativenumber

set nu "number
syntax on "구문강조 사용
colorscheme desert "color 폴더에 colorscheme 설치 필요 / desert는 기본 설치
set background=dark "하이라이팅 lihgt / dark
set autoindent
set shiftwidth=2 "autoindent width
set ts=2 "tabstop, width
set softtabstop=2
set cindent "C Language indent
set cul "Highlight current line
set hls "hlsearch, 검색어 강조
set incsearch "키워드 입력시 점진적 검색
set ic "ignorecase, 검색시 대소문자 무시
set expandtab "탭 대신 스페이스
set laststatus=2 "status line
set nowrapscan "검색할 때 문서의 끝에서 처음으로 안돌아감
set visualbell "키를 잘못눌렀을 때 화면 프레시
set ruler "화면 우측 하단에 현재 커서의 위치(줄,칸) 표시
set fileencoding=utf-8 "파일저장인코딩
set tenc=utf-8 "터미널 인코딩
set history=1000 "vi 편집기록 기억갯수 .viminfo에 기록