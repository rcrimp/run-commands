# bashrc

# to enable a modifiable config change  '2013' to 'current'
CONFIG_DIR=/home/cshome/coursework/241/setup/current

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


# aliases for COMP212
alias 212ssh='ssh sapphire'
alias 212sftp='sftp sapphire'
alias 212up='rsync -rpq ../classiccinema/ rcrimp@sapphire.otago.ac.nz:/devel/rcrimp/projects/classiccinema/'
alias 212dev='rcrimp@sapphire.otago.ac.nz:/devel/rcrimp/projects/'

#aliases for working from home
alias hexssh='ssh rcrimp@hex.otago.ac.nz'
