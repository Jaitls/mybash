GREEN="\[$(tput setaf 2)\]"
LBLUE="\[\033[38;5;14m\]"
RED="\[\033[38;5;124m\]"
RESET="\[$(tput sgr0)\]"

export PS1="${RED}[\h] ${LBLUE}\W ${GREEN}=>${RESET} "
