#set colors
GREEN="\[$(tput setaf 2)\]"
LBLUE="\[\033[38;5;14m\]"
RED="\[\033[38;5;124m\]"
YELLOW="\[\033[0;33m\]"
RESET="\[$(tput sgr0)\]"

#export prompts
export PS1="${RED}[\h] ${LBLUE}\W\n${GREEN}=>${RESET} "
export PS2="${YELLOW}>${RESET}"

#directory colors
alias ls="ls -F"

if [[ "$OSTYPE" == "linux-gnu" ]]; then
        echo "linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
        export CLICOLOR=1
	export LSCOLORS=dxFxCxDxBxegedabagaced
fi


