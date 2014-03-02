# bashrc

if [ -r $CONFIG_DIR/bashrc ]; then
   . $CONFIG_DIR/bashrc
fi

# aliases
alias ls='ls -G'
alias ll='ls -l'
alias la='ll -a'
#alias rm='rm -i'
#alias mv='mv -i'
alias vi='vim'
alias v='vim'
alias e='/home/cshome/coursework/244/macos/Emacs.app/Contents/MacOS/Emacs'
alias q='exit'

#aliases for working from home
alias hex='ssh rcrimp@hex.otago.ac.nz'
