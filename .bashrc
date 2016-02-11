#set colors
GREEN="\[$(tput setaf 2)\]"
LBLUE="\[\033[38;5;14m\]"
RED="\[\033[38;5;124m\]"
YELLOW="\[\033[0;33m\]"
RESET="\[$(tput sgr0)\]"

#export prompts
export PS1="${RED}[\h] ${LBLUE}\W\n${GREEN}=>${RESET} "
export PS2="${YELLOW}>${RESET}"

#ls colors
if [[ "$OSTYPE" == "linux-gnu" ]]; then
        alias ls="ls --color -F"
        export LS_COLORS="di=0;33:"
elif [[ "$OSTYPE" == "darwin"* ]]; then
	alias ls="ls -F"
	export CLICOLOR=1
	export LSCOLORS=dxFxCxDxBxegedabagaced
fi

#extract function
function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else
    if [ -f $1 ] ; then
        # NAME=${1%.*}
        # mkdir $NAME && cd $NAME
        case $1 in
          *.tar.bz2)   tar xvjf ../$1    ;;
          *.tar.gz)    tar xvzf ../$1    ;;
          *.tar.xz)    tar xvJf ../$1    ;;
          *.lzma)      unlzma ../$1      ;;
          *.bz2)       bunzip2 ../$1     ;;
          *.rar)       unrar x -ad ../$1 ;;
          *.gz)        gunzip ../$1      ;;
          *.tar)       tar xvf ../$1     ;;
          *.tbz2)      tar xvjf ../$1    ;;
          *.tgz)       tar xvzf ../$1    ;;
          *.zip)       unzip ../$1       ;;
          *.Z)         uncompress ../$1  ;;
          *.7z)        7z x ../$1        ;;
          *.xz)        unxz ../$1        ;;
          *.exe)       cabextract ../$1  ;;
          *)           echo "extract: '$1' - unknown archive method" ;;
        esac
    else
        echo "$1 - file does not exist"
    fi
fi
}
