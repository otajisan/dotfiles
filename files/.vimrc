syntax on
colorscheme molokai
set t_Co=256

"Tabをスペース4つに展開＆Tabの設定
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

set nocompatible
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" NeoBundleのプラグイン
NeoBundle 'scrooloose/syntastic'

call neobundle#end()
filetype plugin indent on
