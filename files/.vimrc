syntax on
colorscheme molokai
set t_Co=256

"Tabをスペース4つに展開＆Tabの設定
set tabstop=4
set paste
set autoindent
set expandtab
set shiftwidth=4

"encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp932,euc-jp,ucs-2le,ucs-2

"検索ハイライト
set hlsearch

"前回位置を保持
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END

set nocompatible
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

"############ NeoBundleのプラグイン############
"unite.vim
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
let g:unite_source_file_mru_limit = 200
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>
"vimfiler(Ctrl + f)
NeoBundle 'Shougo/vimfiler'
nnoremap <silent><C-f> :VimFiler<CR>
"syntastic
NeoBundle 'scrooloose/syntastic'
"NERDTree(Ctrl + t)
NeoBundle 'scrooloose/nerdtree'
nnoremap <silent><C-t> :NERDTreeToggle<CR>
"autoclose(syntax)
NeoBundle 'Townk/vim-autoclose'
"Emmet (for HTML)
NeoBundle 'mattn/emmet-vim'
"にゃんもどき
NeoBundle 'drillbits/nyan-modoki.vim'
set laststatus=2
set statusline=%F%m%r%h%w[%{&ff}]%=%{g:NyanModoki()}(%l,%c)[%P]
let g:nyan_modoki_select_cat_face_number = 2
let g:nayn_modoki_animation_enabled= 1

call neobundle#end()
filetype plugin indent on

"新規プラグインの導入チェック
NeoBundleCheck
