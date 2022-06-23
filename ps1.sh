
set_ps1() {
    d=$(cat /etc/*-release | grep PRETTY_NAME)
    d=${d#*=}
    d=$(echo ${d#*\"} | awk '{print $1}')

    e=$(pwd)
    h="/home/$USER"
    path=${e/$h/"\[\033[32;1m\]~\[\033[38;5;195m\]"}
    path=${path//\//"\[\033[34;1m\]/\[\033[38;5;195m\]"}
    PS1="\[\e[38;5;208;1m\]\u\[\e[0m\]{\[\e[36;1m\]$d\[\e[0m\]}:\[\e[34;1m\]$path\[\e[0m\] \[\e[31;1m\]λ \[\e[0m\]"
}

PROMPT_COMMAND=set_ps1
