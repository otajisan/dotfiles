if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
#source /usr/local/Library/Contributions/brew_bash_completion.sh

eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/shims:$PATH"

PATH=/usr/local/git/bin:$PATH
export PATH

export LSCOLORS=Fxfxcxdxbxegedabagacad

# tmux
if [ $SHLVL = 1 ]; then
  tmux
  tmux source ~/.tmux.conf
fi
