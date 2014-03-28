# bashrc

#if [ -r $CONFIG_DIR/bashrc ]; then
#   . $CONFIG_DIR/bashrc
#fi

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
alias rm='mv -iv --backup=numbered --target-directory ~/.Trash/'
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
#TODO make the following more generic and usable
#alias 212up='rsync -rpq ../classiccinema/ rcrimp@sapphire.otago.ac.nz:/devel/rcrimp/projects/classiccinema/'
#alias Eup='rsync -rpq * rcrimp@sapphire.otago.ac.nz:/devel/rcrimp/projects/endlessia/'
#alias 212dev='rcrimp@sapphire.otago.ac.nz:/devel/rcrimp/projects/'

#aliases for working from home
alias hexssh='ssh rcrimp@hex.otago.ac.nz'

PS1='\h:\W \u\$ '
# Make bash check its window size after a process completes
shopt -s checkwinsize
# Tell the terminal about the working directory at each prompt.
if [ "$TERM_PROGRAM" == "Apple_Terminal" ] && [ -z "$INSIDE_EMACS" ]; then
   update_terminal_cwd() {
        # Identify the directory using a "file:" scheme URL,
        # including the host name to disambiguate local vs.
        # remote connections. Percent-escape spaces.
      local SEARCH=' '
      local REPLACE='%20'
      local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
      printf '\e]7;%s\a' "$PWD_URL"
   }
   PROMPT_COMMAND="update_terminal_cwd; $PROMPT_COMMAND"
fi

#Startup
echo "Do you want to download changes from git?"
read answer
if [[ $answer == "y" ]]
then
   cd ~/uni/
   git status
   git pull
   git add -A
   git commit -m "$(date)"
   git push
fi
clear
#echo -e "new ALIASES ctrl xx -> toggle cursor to front"
