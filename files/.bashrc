#PS1="\033[36m[\u@\H:\$(pwd)] \033[35m\$(date +'%Y/%m/%d') \t\n\033[35m$ \033[0m";

COLOR_SKYBLUE="\[\033[36m\]"
COLOR_PINK="\[\033[35m\]"
COLOR_WHITE="\[\033[0m\]"
USER="\u"
HOST="\H"
DIR="\$(pwd)"
DATE_TIME="\$(date +'%Y/%m/%d')"
export PS1="$COLOR_SKYBLUE[$USER@$HOST:$DIR] $COLOR_PINK$DATE_TIME \t\n$COLOR_PINK$ $COLOR_WHITE";

if [ -f ~/.profile ]; then
    . ~/.profile
fi


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home"
