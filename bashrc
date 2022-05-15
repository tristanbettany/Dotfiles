function bashPrompt {
    local __color_default="\[\e[0m\]"
    local __color_black="\[\e[0;30m\]"
    local __color_maroon="\[\e[0;31m\]"
    local __color_green="\[\e[0;32m\]"
    local __color_olive="\[\e[0;33m\]"
    local __color_navy="\[\e[0;34m\]"
    local __color_purple="\[\e[0;35m\]"
    local __color_teal="\[\e[0;36m\]"
    local __color_silver="\[\e[0;37m\]"
    local __color_grey="\[\e[0;90m\]"
    local __color_red="\[\e[0;91m\]"
    local __color_lime="\[\e[0;92m\]"
    local __color_yellow="\[\e[0;93m\]"
    local __color_blue="\[\e[0;94m\]"
    local __color_magenta="\[\e[0;95m\]"
    local __color_cyan="\[\e[0;96m\]"
    local __color_white="\[\e[0;97m\]"

    local __prompt_user_host="$__color_navy\u$__color_default@$__color_purple\h"
    local __prompt_seperator="$__color_default:"
    local __prompt_directory="$__color_olive\w"
    local __prompt_branch_color="$__color_green"
    local __prompt_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    local __prompt_new_line="$__color_default\n"
    local __prompt_time="$__color_default\t"
    local __prompt_tail="$__color_green$"
    local __prompt_end_color="$__color_default"

    export PS1="$__prompt_new_line$__prompt_user_host$__prompt_seperator$__prompt_directory $__prompt_branch_color$__prompt_branch $__prompt_new_line$__prompt_time $__prompt_tail $__prompt_end_color"
}

bashPrompt

alias ll="ls -la --color=auto"
alias ww="git cm $1"
