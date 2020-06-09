" 行番号の表示
set number

" カーソルが何行目の何列目に置かれているかを表示する
set ruler

" 新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする
set autoindent

" 新しい行を作ったときに高度な自動インデントを行う
set smartindent

" 強調表示(色付け)のON/OFF設定
syntax on

" コンソールのタイトル
set title

" 空白文字の可視化
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%,space:･
" spaceはなしでもいいかも

" ステータスラインを表示するウィンドウを設定する
" 2:常にステータスラインを表示する
set laststatus=2

" vimのバックアップファイルとスワップファイル
set nobackup
set noswapfile
set noundofile

" マウスモード有効
set mouse=a

" TABキーを押した際にタブ文字の代わりにスペースを入れる
set expandtab

" タブ幅をスペース4つ分にする
set tabstop=2

" 自動で生成するtab幅をスペース4つ分にする
set shiftwidth=2

" 行末で->を押すと次の行
set whichwrap=b,s,[,],<,>

set encoding=UTF-8

" デフォルトでツリー表示
autocmd VimEnter * execute 'NERDTree'

" guifontを設定しないと文字化けになるらしい
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12

" フォルダアイコンを表示
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true
" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

let g:airline_theme='simple'

set nocompatible
filetype off
set rtp=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'twitvim/twitvim'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'w0ng/vim-hybrid'
Plugin 'preservim/nerdtree'

call vundle#end()
filetype plugin indent on
