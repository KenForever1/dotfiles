#!/bin/bash

function install_fish(){
	echo "install_fish"
#	sudo apt-add-repository ppa:fish-shell/release-3
#	sudo apt update
#	sleep 3
#	sudo apt install fish
}

function install_fzf(){
	echo "install_fzf"
	#audo apt install fzf
}

function install_ripgrep(){
	echo "install_ripgrep"
	#audo apt install ripgrep
}

#the_cmd=fish
the_cmd_list=("fish" "fzf" "ripgrep")

for the_cmd in ${the_cmd_list[@]}; do
	echo "current install $the_cmd"
	if ! command -v $the_cmd &> /dev/null
	then
	    echo "$the_cmd could not be found"
	    "install_$the_cmd"
	else
	    echo "$the_cmd found"    
	    "install_$the_cmd"
	fi

done




