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

# lsのショートカット
alias l='ls -l'
alias ll='ls -l'
alias la='ls -la'

# vimfiler
alias vf='vim +VimFiler'

# .profile編集
vprofile()
{
    vim ~/.profile
}

# .profile反映
sprofile()
{
    source ~/.profile
}

# screen全閉じ
scrd()
{
    screen -r -X quit
}

# screenの残プロセスチェック
psck()
{
    ps aux | grep "SCREEN"
    ps aux | grep "screen"
}

# Apacheのエラーログ
el()
{
    sudo tail -f /var/log/httpd/error_log
}
