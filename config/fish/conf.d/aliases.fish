#alias volume "~/i3-volume/volume"
#alias volume-lvl "~/i3-volume/volume output 'Volume level: %v\n'"
#alias jbl-connect "bluetoothctl power on ; bluetoothctl connect 84:D3:52:0A:F3:9E"


# Common aliases
alias py "python3 -q"
alias python "python3 -q"
alias vim hx
alias cd z
alias neofetch fastfetch
alias cl clear
alias iorgen "~/Documents/git/iorgen/.venv/bin/iorgen"
alias :q exit
alias s ls
alias list-files "find . | fzf"


# Utility functions

function getpid -d "Prints the focused window's PID"
    xprop -id $(xdotool getwindowfocus) \
        | grep PID | tr ' ' '\n' | tail -n1
end

function cpprun
    g++ -std=c++17 -O2 $argv -o cppout -Wall \
        && ./cppout && rm cppout
end

function afs -d "Initialises and opens the afs"
    kinit paul.rabiet-steichen@CRI.EPITA.FR && echo "Kerberos initiated"\
        && sshfs -o reconnect "paul.rabiet-steichen@ssh.cri.epita.fr:/afs/cri.epita.fr/user/p/pa/paul.rabiet-steichen/u/" ~/afs
    cd ~/afs
end

alias kbmemo 'feh ~/Pictures/qwerty-intl-layout.png'

function mkcd
    mkdir -p $argv && command cd $argv
end


# TO TIDY UP

function wordc
    echo "$argv" | wc -m
end
function togglemute
    set state (amixer sget Master | tr "[" "\n" | tail -n1)
    switch $state
        case 'on*'
            amixer sset Master mute
        case 'off*'
            amixer sset Master unmute
    end
end
