if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')

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
  call dein#add('neoclide/coc.nvim', { 'build': 'release' })

  " COLORTHEME
  call dein#add('altercation/vim-colors-solarized')
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
syntax enable

if dein#check_install()
  call dein#install()
endif


" START
let g:deoplete#enable_at_startup = 1
"let g:deoplete#auto_complete_delay = 0

" GENERAL
set autoread
set showcmd
set number
set cursorline
set virtualedit=onemore
set showmatch
nnoremap j gj
nnoremap k gk
set listchars=tab:»-

" COLOR
set background=dark
colorscheme PaperColor

" Indent
set tabstop=4
set shiftwidth=4
set expandtab
set list
set listchars=tab:»-

" SEARCH
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

" BACKSPACE
set backspace=indent,eol,start

" FOLD
set foldlevel=100

" ENCODING
set encoding=utf-8
scriptencoding utf-8
set fileencodings=utf-8,ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932

" RELEASE highlight
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" TAB-Down-Up
inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<Up>" : "\<S-TAB>"

" COCVIM
nmap <silent> <Leader>cd <Plug>(coc-definition)
nmap <silent> <Leader>cr <Plug>(coc-references)
nmap <silent> <Leader>cre <Plug>(coc-rename)

" REF
" https://github.com/reireias/dotfiles/blob/master/.vimrc
" https://gist.github.com/Fendo181/6f44ebe0a4e08f49f194a837608c4936
" https://qiita.com/morikooooo/items/9fd41bcd8d1ce9170301