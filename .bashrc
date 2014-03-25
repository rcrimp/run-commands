# bashrc

echo -e "New alias(s)

rm - recoverable delete
rec - recover the deletion
go - open dir/file
c - clear but more awesome
l - ls
x - exit

ctrl xx -> toggle cursor to front
ctrl u -> delete line
CapsLock -> ctrl
";

if [ -r $CONFIG_DIR/bashrc ]; then
   . $CONFIG_DIR/bashrc
fi

#reinds CapsLock to Ctrl
xmodmap ~/.Xmodmap

#such meta
alias bashrc='(e ~/.bashrc &)'
alias refresh='clear;source ~/.bashrc'

# aliases
alias c='clear;pwd;ls'
alias l='ls'
alias ls='ls -G --color=always'
bind -x '"\C-l": c'

bind '"\C-v": emacs'

alias mv='mv -i'
alias x='exit'
alias go='gnome-open'
alias v='vim'
alias vi='vim'
alias e='emacs'
alias emacs='emacs'
#wat() { man "$1" | grep "\s\$2"; }
alias wat='man'

#thx github.com/blbu
cl() { cd "$@"; ls; }
mkdircd() { mkdir -p "$@" && cd $_; }

# recoverable deletion
alias rm='mv -iv --backup=numbered --target-directory ~/.Trash/'
rec() { mv -i ~/.Trash/"$1" . ;echo "'$1' recovered from trash"; }

#git
alias gs='git status'


#TODO make these more generic
#cd() { for ".." in "$@" do cd .. done }
alias ..='cd ..;pwd'
alias ....='cd ../..;pwd'
alias ......='cd ../../..;pwd'
alias .......='cd ../../../..;pwd'

#fix this
alias killfirefox="for f in $(ps auxfwww | grep firefox | awk {'print$2'}); do kill -9 $f; done"

# aliases for web dev ing
alias 212ssh='ssh sapphire'
alias 212sftp='sftp sapphire'
#TODO make the following more generic and usable
#alias 212up='rsync -rpq ../classiccinema/ rcrimp@sapphire.otago.ac.nz:/devel/rcrimp/projects/classiccinema/'
#alias Eup='rsync -rpq * rcrimp@sapphire.otago.ac.nz:/devel/rcrimp/projects/endlessia/'
#alias 212dev='rcrimp@sapphire.otago.ac.nz:/devel/rcrimp/projects/'

#aliases for working from home
alias hexssh='ssh rcrimp@hex.otago.ac.nz'
