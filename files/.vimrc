syntax on
colorscheme molokai
set t_Co=256

"NeoBundle用の設定を読み込み
if filereadable(expand('~/.vimrc.NeoBundle'))
    source ~/.vimrc.NeoBundle
endif

"dein用の設定を読み込み
if filereadable(expand('~/.vimrc.dein'))
    source ~/.vimrc.dein
endif

"Tabをスペース4つに展開＆Tabの設定
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

"encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp932,euc-jp,ucs-2le,ucs-2

"検索ハイライト
set hlsearch

"行番号
set number

"括弧
set showmatch

"検索時に大小区別
set smartcase

"拡張子.tmplにphpの色分けを適用
au BufRead,BufNewFile *.tmpl set filetype=php

"デフォルトのZenkakuSpaceを定義
function ZenkakuSpace()
    highlight ZenkakuSpace cterm=underline ctermfg=darkgray gui=underline guifg=darkgray
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
            autocmd ColorScheme       * call ZenkakuSpace()
            autocmd VimEnter,WinEnter * match ZenkakuSpace /＿/
    augroup End
    call ZenkakuSpace()
endif

"前回位置を保持
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END

"入力モードに応じてステータスラインの色を変える
if v:version >= 700
    augroup InsertHook
    autocmd!
    autocmd InsertEnter * highlight StatusLine ctermfg=1 ctermbg=7
    autocmd InsertLeave * highlight StatusLine ctermfg=4 ctermbg=7
    augroup END
endif
