if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/dein')
  " INIT
  call dein#begin('~/.vim/dein')
  call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/neosnippet.vim')

  " GIT
  call dein#add('tpope/vim-fugitive')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  " ICON
  call dein#add('ryanoasis/vim-devicons')

  " UTILS
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('jistr/vim-nerdtree-tabs')
  call dein#add('tpope/vim-surround')
  call dein#add('jiangmiao/auto-pairs')

  " COLORTHEME
  call dein#add('tomasr/molokai')
  call dein#add('morhetz/gruvbox')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('freeo/vim-kalisi')
  call dein#add('NLKNguyen/papercolor-theme')

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  if has('lua')
    " EOL
    "call dein#add('Shougo/neocomplete.vim')
    call dein#add('Shougo/neosnippet')
    call dein#add('Shougo/neosnippet-snippets')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on

if dein#check_install()
  call dein#install()
endif

" START
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 0

set background=dark
colorscheme PaperColor

" setting
" "文字コードをUFT-8に設定
set fenc=utf-8

" " バックアップファイルを作らない
set nobackup

" " スワップファイルを作らない
set noswapfile

" " 編集中のファイルが変更されたら自動で読み直す
set autoread

" " バッファが編集中でもその他のファイルを開けるように
set hidden

" " 入力中のコマンドをステータスに表示する
set showcmd

" " 見た目系
" " 行番号を表示
set number

" " 現在の行を強調表示
set cursorline

" " 現在の行を強調表示（縦）
" set cursorcolumn

" " 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore

" " インデントはスマートインデント
" set smartindent

" " ビープ音を可視化
"set visualbell

" " 括弧入力時の対応する括弧を表示
set showmatch

" " ステータスラインを常に表示
set laststatus=2

" " コマンドラインの補完
set wildmode=list:longest

" 折り返し時に表示行単位での移動できるようにする

nnoremap j gj
nnoremap k gk

" " シンタックスハイライトの有効化
syntax enable
"
" " Tab系
" " 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-

" " 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4

" " 行頭でのTab文字の表示幅
set shiftwidth=4


"" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase

" " 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase

" " 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch

" " 検索時に最後まで行ったら最初に戻る
set wrapscan

" " 検索語をハイライト表示
set hlsearch

" " ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" BackSpace
set backspace=indent,eol,start

" エンターキーで補完候補の確定. スニペットの展開もエンターキーで確定
imap <expr><CR> neosnippet#expandable() ? "<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "<C-y>" : "<CR>"

" タブキーで補完候補の選択. スニペット内のジャンプもタブキーでジャンプ
imap <expr><TAB> pumvisible() ? "<C-n>" : neosnippet#jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "<TAB>"

