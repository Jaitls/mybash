GREEN="\[$(tput setaf 2)\]"
LBLUE="\[\033[38;5;14m\]"
RED="\[\033[38;5;124m\]"
YELLOW="\[\033[0;33m\]"
RESET="\[$(tput sgr0)\]"

export PS1="${RED}[\h] ${LBLUE}\W\n${GREEN}=>${RESET} "
export PS2="${YELLOW}>${RESET}"
