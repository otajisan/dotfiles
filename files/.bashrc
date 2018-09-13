if [ -f ~/.profile ]; then
    . ~/.profile
fi

if [ -f ~/git-prompt.sh ]; then
    source ~/git-prompt.sh
fi

if [ -f ~/git-completion.bash ]; then
    source ~/git-completion.bash
fi

if [ -f ~/.dockerrc ]; then
    source ~/.dockerrc
fi

COLOR_SKYBLUE="\[\033[36m\]"
COLOR_YELLOW="\[\033[33m\]"
COLOR_PINK="\[\033[35m\]"
COLOR_WHITE="\[\033[0m\]"
USER_NAME="\u"
HOST="\H"
DIR="\$(pwd)"
DATE_TIME="\$(date +'%Y/%m/%d') \t"
export PS1="$COLOR_SKYBLUE[$USER_NAME@$HOST:$DIR]$COLOR_YELLOW\$(__git_ps1) $COLOR_PINK$DATE_TIME \n$COLOR_PINK$ $COLOR_WHITE";

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-10.0.2.jdk/Contents/Home"

# anyenv
if [ -d ${HOME}/.anyenv ] ; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
    # for tmux
    for D in `ls $HOME/.anyenv/envs`
    do
        export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
    done
fi

DANGER_GITHUB_API_TOKEN=849f5c73330f6734f4b6a1ea71ad11417d8ca62d

# Go
export GO_VERSION=1.8,7
export GOROOT=$HOME/.anyenv/envs/goenv/versions/$GO_VERSION
export GOPATH=$HOME/go
export PATH=$HOME/.anyenv/envs/goenv/shims/bin:$PATH
export PATH=$GOROOT/bin:$PATH
export PATH=$GOPATH/bin:$PATH
echo Now using golang v$GO_VERSION
