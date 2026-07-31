#
# ~/.bashrc
#

[[ $- != *i* ]] && return || source -- "$(blesh-share)"/ble.sh --attach=none && ~/Code/terminal/run.sh

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

[[ ! ${BLE_VERSION-} ]] || ble-attach
