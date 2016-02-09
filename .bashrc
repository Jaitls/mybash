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


