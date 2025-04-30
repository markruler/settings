# https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-HISTFILESIZE
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTTIMEFORMAT="[%F %T] "
HISTSIZE=1000
HISTFILESIZE=5000

# https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-TMOUT
# timeout for the read Bash builtin commands (seconds)
TMOUT=300

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

