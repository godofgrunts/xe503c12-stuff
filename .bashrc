#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

function bat() {
  a=$(</sys/class/power_supply/sbs-20-000b/charge_full)
  b=$(</sys/class/power_supply/sbs-20-000b/charge_now)
  c=$((b * 1000 / a))
  d=$((c / 10))
  e=$((c % 10))
  printf "%i.%1i%%" $d $e
}

PS1='[\u@\h \W][`bat`]\$ '
