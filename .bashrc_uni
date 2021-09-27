# bashrc

#if [ -r $CONFIG_DIR/bashrc ]; then
#   . $CONFIG_DIR/bashrc
#fi

#PS1='\h:\W \u\$ '
GREEN="\e[1;32m"
RED="\e[1;31m"
NONE="\e[m"

get_exit_status(){
   es=$?
   if [ $es -eq 0 ]
   then
      echo -e "${GREEN}${es}${NONE}"
   else
      echo -e "${RED}${es}${NONE}"
   fi
}

PROMPT_COMMAND='exitStatus=$(get_exit_status)'
type gnome-open >/dev/null 2>&1 && alias open='gnome-open'
type gvfs-open >/dev/null 2>&1 && alias open='gvfs-open'

#rebinds CapsLock to Ctrl
#OS fix
if [[ $TERM_PROGRAM == "Apple_Terminal"  ]];
then
   #rebind CapsLock to L_Ctrl on OSX
   alias ls='ls -G'
   alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
   alias e='emacs'
   alias go='open'
else
   PS1='[\t] \W \[$exitStatus\] \$ '
   xmodmap ~/.Xmodmap
   alias ls='ls -G --color=always'
   alias e='emacs'
   alias open='gnome-open'
   alias go='gnome-open'
fi

#such meta
alias bashrc='(e ~/.bashrc &)'
alias refresh='clear;source ~/.bashrc'

# aliases
alias c='clear;pwd;ls .'
alias l='ls'
bind -x '"\C-l": c'
alias mv='mv -i'
alias x='exit'
alias v='vim'
alias vi='vim'
alias wat='man'

#thx github.com/blbu
cl() { cd "$@"; ls .; }
mkdircd() { mkdir -p "$@" && cd $_; }

# recoverable deletion

#if [[ $TERM_PROGRAM == "Apple_Terminal"  ]];
#then
#rm() { mv -iv "$@" ~/.Trash; }
#else
#alias rm='mv -iv --backup=numbered --target-directory ~/.Trash/'
#fi
rmd() { mv -iv "$@" ~/.Trash/; }
rec() { mv -i ~/.Trash/"$1" . ;echo "'$1' recovered from trash"; }
alias trash='ls -a ~/.Trash/'
rmtrash() { \rm -i ~/.Trash/"$@";}
emptytrash() { \rm -rf ~/.Trash/* ~/.Trash/.* 2>&-; }

#git
alias gs='git status'
alias ga='git add -A'
alias gc='git commit -m'
alias gp='git push origin master'
alias gl='git lg'
gacp() { ga; gc "$@"; gp; }

#TODO make these more generic
#cd() { for ".." in "$@" do cd .. done }
alias ..='cd ..;pwd'
alias ....='cd ../..;pwd'
alias ......='cd ../../..;pwd'
alias .......='cd ../../../..;pwd'

#fix this
#alias killfirefox="for f in $(ps auxfwww | grep firefox | awk {'print$2'}); do kill -9 $f; done"

# aliases for web dev ing
alias 212ssh='ssh sapphire'
alias 212sftp='sftp sapphire'
alias hex='ssh rcrimp@hex.otago.ac.nz'
#TODO make the following more generic and usable
#alias 212up='rsync -rpq ../classiccinema/ rcrimp@sapphire.otago.ac.nz:/devel/rcrimp/projects/classiccinema/'
#alias Eup='rsync -rpq * rcrimp@sapphire.otago.ac.nz:/devel/rcrimp/projects/endlessia/'
#alias 212dev='rcrimp@sapphire.otago.ac.nz:/devel/rcrimp/projects/'

#aliases for working from home
alias hexssh='ssh rcrimp@hex.otago.ac.nz'
