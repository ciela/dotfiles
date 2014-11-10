set nocp
set fileformats=unix,dos,mac
set number
set smartcase
syntax on
set backspace=indent,eol,start

"--------------------------------------------------
"表示関係
"--------------------------------------------------
set title
set showcmd
set laststatus=2
set showmatch
set hlsearch

" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

"----------------------------------------------------
" インデント
"----------------------------------------------------
set autoindent
set tabstop=4 "タブが対応する空白の数

"----------------------------------------------------
" 国際化関係
"----------------------------------------------------
" 文字コードの設定
" fileencodingsの設定ではencodingの値を一番最後に記述する
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,euc-jp,cp932,iso-2022-jp
set fileencodings+=,ucs-2le,ucs-2,utf-8
"set enc=japan

" 色付け
colorscheme darkblue

" omnifunc
setlocal omnifunc=syntaxcomplete#Complete

" Golang
" 事前に
" $ go get github.com/nsf/gocode
" しておく必要あり
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
autocmd FileType go autocmd BufWritePre <buffer> Fmt
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
set completeopt=menu,preview
