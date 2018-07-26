if [ -f ~/.profile ]; then
    . ~/.profile
fi

if [ -f ~/git-prompt.sh ]; then
    source ~/git-prompt.sh
fi

if [ -f ~/git-completion.bash ]; then
    source ~/git-completion.bash
fi

COLOR_SKYBLUE="\[\033[36m\]"
COLOR_YELLOW="\[\033[33m\]"
COLOR_PINK="\[\033[35m\]"
COLOR_WHITE="\[\033[0m\]"
USER="\u"
HOST="\H"
DIR="\$(pwd)"
DATE_TIME="\$(date +'%Y/%m/%d') \t"
export PS1="$COLOR_SKYBLUE[$USER@$HOST:$DIR]$COLOR_YELLOW\$(__git_ps1) $COLOR_PINK$DATE_TIME \n$COLOR_PINK$ $COLOR_WHITE";

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home"
