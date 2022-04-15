# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
neofetch
alias ls="ls -lha"
alias zzz="sudo echo mem > /sys/power/state"
alias makeconf="sudo vim /etc/portage/make.conf"
alias upworld="
emerge-webrsync
emaint sync --auto
emaint all
emergej --update --deep --changed-use --with-bdeps=y @world"
alias i3conf="sudo vim ~/.config/i3/config"
alias piconf="sudo vim ~/.config/picom.conf"
alias customk="cd /usr/src/gitKernel/staging/"
alias srcb="source /root/.bashrc"
alias upGitk="cd /usr/src/gitKernel/staging/ && git fetch && cd"
alias editMakeConf="sudo vim /etc/portage/make.conf"
alias checkBuildStatus="cd /usr/tmp/portage/"
alias updateDotFiles="cp -rf ~/.bashrc ~/.bash_profile ~/.vimrc ~.Xresources ~.config/i3 ~/.config/picom.conf ~/myGentooConfigFiles/gentooLaptop/"
function mark { export $1=`pwd`;}
alias pushDotFiles="mark there  && cd ~/myGentooConfigFiles/ && git commit -a && git push && cd $there"
alias clear="clear && pfetch"
alias editBash="sudo vim ~/.bashrc"
alias git_branch="git branch | more"
alias resetWifiService="rc-service wpa_supplicant restart && rc-service dhcpcd restart && ping -c 3
8.8.8.8"
alias resetWifi="wpa_supplicant -i wlp0s20f3 -c /etc/wpa_supplicant/wpa_supplicant.conf && dhcpcd
wlp0s20f3 && ping -c 3 8.8.8.8"
