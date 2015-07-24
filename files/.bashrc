PS1="\033[36m[\u@\H:\$(pwd)] \033[35m\$(date +'%Y/%m/%d') \t\n\033[35m$ \033[0m";

if [ -f ~/.profile ]; then
    . ~/.profile
fi


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home"
