# 環境ごとの設定があれば読み込み
if [ -f ~/.profile.local ]; then
    . ~/.profile.local
fi

# Mac / Linuxでlsの色付けを振り分け
case "${OSTYPE}" in
darwin*)
    alias ls='ls -G'
    ;;
linux*)
    alias ls='ls --color'
    ;;
esac

alias l='ls'
alias ll='ls -l'
alias la='ls -la'

# vimfiler
alias vf='vim +VimFiler'

vprofile(){
    vim ~/.profile
}

sprofile(){
    source ~/.profile
}

scrd(){
    screen -r -X quit
}

psck(){
    ps aux | grep "SCREEN"
    ps aux | grep "screen"
}

