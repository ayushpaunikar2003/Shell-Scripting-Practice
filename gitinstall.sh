#!/bin/bash

#This is a Script to install git in Linux and MacOS


echo "Installation Started"

if [ "$(uname)" = "Linux" ];
then
	echo "This is a Linux Operating Machine"
	sudo apt install git -y
elif [ "$(uname)" = "Darwin" ];
then
	echo "This is a Mac OS"
	brew install git
else
	echo "Please Check the Operating System Eligibility, git not Installed !!!"
fi
