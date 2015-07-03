#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# This neat function puts the remaining battery life on $PS1
function bat { 
a=$(cat /sys/class/power_supply/sbs-20-000b/charge_full);  
b=$(cat /sys/class/power_supply/sbs-20-000b/charge_now); 
c=$(echo "$b / $a" | bc -l ); 
d=$(echo "$c * 100" | bc -l) ; 
e=$(echo "$d + 0" | bc); 
printf "%.1f%%" $e;
}

PS1='[\u@\h \W][`bat`]\$ '
