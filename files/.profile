if [ -f ~/.profile.local ]; then
    . ~/.profile.local
fi

alias ls='ls -G'
alias l='ls'
alias ll='ls -l'
alias la='ls -la'

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

