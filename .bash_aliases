#!/bin/bash

######## Hello, my name is Keny & I have no idea what I am doing ##################################################################

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@_@.-')@@@@@@@@@@@@@@@@@@@@@@@.-.@.-')@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#( (  OO) )@@@@@@@@@@@@@@@@@@@@\  ( OO )@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# \     .'_@,======.@======@@@,--. ,--.,======.,==.@@,==,@,==.@@@,==.@@@@@@@@@@@
#@,`'--..._)|  .---',  --.  \@|  .'   /|  .---'|   \@|  |@@\  `.'  /@@@@@@@@@@@@
#@|  |@@\  '|  |@@@@|  |@@\  '|      /,|  |@@@@|    \|  |.-')     /@@@@@@@@@@@@@
#@|  |@@@' ||  '--.@|  |@@@  ||     '@@|  '--.@|  .     (OO  \   /@@@@@@@@@@@@@@
#@|  |@@@/ :|  .--'@|  |@@@  :|  .   \@|  .--'@|  |\    ||   /  /@@@@@@@@@@@@@@@
#@|  '--'  /|  `---.|  '--'  /|  |\   \|  `---.|  |@\   |`-./  /@@@@@@@@@@@@@@@@
#@`======='@`======'`======='@`=='@'=='`======'`=='@@`=='@@`=='@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@...@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@...@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@......@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@*..................@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@............@@@@@/..........@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@......@@@@@......@@@@@@@@@@&......@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@.....@@@@@@@@.......@@@@@@@@@@@@@.....@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@.....@@@@@@@@@@.........@@@@@@@@@@@@@.....@@@(....@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@..../@@@@@@@@@@@....@@....,@@@@@@@@@@@@@..........%@@@@@@@@@@@@@@@@
#@@@@@@@@@@@....@@@@@@@@@@@@@....@@@.....@@@@@#...........@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@....@@@@@@@@@@@@@....@@@@@.............@@@%...,@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@....@@@@@@@@@@@@@@...............&@@@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@....@@@@@@@@@@@@..........*@@@.....@@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@....@@@@*............@@@@@@@@@@....@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@.....................@@@@@@@@@@@.....@@@@@....@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@.................................@@@@@....*@@@....@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@....@@....@@@@@@@@@@@....@@@..........@(.........@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@.....@@@@@@@@@....@@@@@@@@@@............@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@.....,@@@@@@....@@@@@@@@@@@@@@........@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@....../@@....@@@@@@@@@@@.............@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@.........................@@@@@.....@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@............@@@@@@@@@@@@@@*..@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@.................@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@.................@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

################ System Configs ####################################################################################################

# Bash fallback PS1 Prompt
#export DEFAULTPS1=$PS1
#export PS1="i\[\033[1;31m\]\u@\H\[\033[1;37m\]:\[\033[1;32m\]\w\n> \[$(tput sgr0)\]"

# Ghostty shell integration for Bash. This should be at the top
if [ -n "${GHOSTTY_RESOURCES_DIR}" ]; then
    builtin source "${GHOSTTY_RESOURCES_DIR}/shell-integration/bash/ghostty.bash"
fi

if [ -d "$HOME/Git" ]; then
    PATH="$HOME/Git:$PATH"
fi

if [ -d "$HOME/.cargo/bin" ]; then
    PATH="$HOME/.cargo/bin:$PATH"
fi

if [ -d "$HOME/.bin" ]; then
    PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/Applications" ]; then
    PATH="$HOME/Applications:$PATH"
fi

if [ -d "/var/lib/flatpak/exports/bin/" ]; then
    PATH="/var/lib/flatpak/exports/bin/:$PATH"
fi

export PATH=$PATH:/usr/local/go/bin   # Adds Go into PATH as directed from creators
export HISTTIMEFORMAT="%F %T "        # Adds a time listing with "history" command
export HISTCONTROL=ignoreboth         # Removes duplicates from .bash_history
export CLICOLOR=1                     # Not quite sure if it really works...
export PATH=$PATH:/usr/bin/python3.13 # Adding Python3.13 to path for easier use
export EDITOR=neovim
#export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Starship install
# curl -sS https://starship.rs/install.sh | sh
eval "$(starship init bash)"

# Colorscript Gitlad @ "https://gitlab.com/dwt1/shell-color-scripts"
# DistroTube's color-scripts install
# git clone https://gitlab.com/dwt1/shell-color-scripts.git
# cd shell-color-scripts
# sudo make install
colorscript random

# Circuitpython needs this path
#export PATH=/home/$USER/bin/gcc-arm-none-eabi-10-2020-q4-major/bin:$PATH

################# Aliases ##########################################################################################################

# the terminal rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# Quality of life Aliases
alias :q='exit'

alias ..='cd ..'

alias ...="cd ../.."

alias ....="cd ../../.."

alias .....="cd ../../../.."

alias ls='ls --color=auto' # Adds color to ls output

alias la='ls -A' # Show ALL W/O "." & ".." directories

alias ll='ls -alF' # LIST ALL with FILE extention

alias lh='ls -d .* --color=auto' # List hidden

alias hg='history | grep' # Search through .bash_history

alias grep='grep --color=auto' # Adds color to grep output

alias egrep='egrep --color=auto'

alias fgrep='fgrep --color=auto'

alias df='df -h' # human-readable sizes

alias free='free -m' # show sizes in MB

alias psa="ps auxf"

alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

alias psmem='ps auxf | sort -nr -k 4'

alias pscpu='ps auxf | sort -nr -k 3'

alias up="sudo apt update -y && sudo apt dist-upgrade -y && sudo apt autoremove -y"

# Shortcuts for non-vanilla programs

# Shortcuts for Git
alias commit="git commit"

alias gadd="git add ."

alias pushit="git add .; git commit -m 'diff it out'; git push -u origin main"

alias copy="xclip -selection clipboard"

# Bedtime screensaver
alias Bedtime="cmatrix -as"

alias picocad="~/bin/PicoCAD/linux/picocad" # Downloaded from Humble Bundle

alias provpn="protonvpn-cli connect" # Your favorite VPN agent (TODO protonvpn-cli setup script)

alias yta-mp3="yt-dlp --extract-audio --audio-format mp3 "

alias ytv-best="yt-dlp -f bestvideo+bestaudio "

alias ytv-mp4="yt-dlp -f bestvideo+bestaudio --merge-output-format mp4"

# Shortcut to arch wiki page
alias Wiki="/home/d3d/Npm/arch_Wiki-linux-x64/arch_Wiki"

# Emacs daemon shortcut
alias emacs="emacsclient -c -a 'emacs'"

# SSH commands to connect to the Pi's
alias pi_kali="ssh kali@192.168.1."

alias pi_ssh="ssh pi@192.168.1."

alias arduinoIDE="~/bin/arduino-ide_2.3.4_Linux_64bit.AppImage &"

# Docker containers for easy transportability between OS changes

alias parrotsec="docker run --rm -ti --network host -v /home/d3d/Playground/:/docs parrotsec/security"

alias bettercap="sudo docker run -it --privileged --net=host bettercap/bettercap"

alias metasploitable="sudo docker run -it --rm -p 8080:80 --name xploit_me tleemcjr/metasploitable2"

alias metasploit="docker run -it --rm  --network host --name Msploit metasploitframework/metasploit-framework"

alias scipy-book="sudo docker run -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v "${PWD}":/math jupyter/scipy-notebook "

alias scipy="sudo docker run -p 8888:8888 jupyter/scipy-notebook"

# Nessus needs a new auth token every time you switch OSes
alias nessus_start="/bin/systemctl start nessusd.service"

alias nessus_stop="/bin/systemctl stop nessusd.service"

#alias blender="~/bin/blender/blender"

# Davinci Reslove Install Instructions For PopOS
# sudo apt install libssl3 ocl-icd-opencl-dev fakeroot xorriso
# Install Resolve From "https://www.blackmagicdesign.com/products/davinciresolve/"
# Extract to ~/bin/
alias Resolve="~/bin/DaVinci_Resolve_18.6.6_Linux.run"
alias Davinci="~/bin/DaVinci_Resolve_18.6.6_Linux.run"
