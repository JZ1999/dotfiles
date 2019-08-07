# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/usr/jdk/jdk-10.0.2/bin/:/home/joseph/.scripts/:/usr/bin/:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/joseph/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="random"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
#  ZSH_THEME_RANDOM_CANDIDATES=( "bira" "agnoster" "arrow" "cloud" "imajes" "blinks" "kolo" "lambda" "bureau" "clean" "crunch" "darkblood" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
#  DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git python tmux web-search sudo
)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

#  #Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi
#  export EDITOR='nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Proyect organilab
CPLUS_INCLUDE_PATH=/usr/include/gdal
C_INCLUDE_PATH=/usr/include/gdal
export DBPORT="5432"

# Proyect MarkMonitor Variables
export DB_NAME="gacetas"
export DB_USER="usr108630"
export DB_PASS="4eb952275dd2"
export DJANGO_KEY="rlvs)lg7ioxty2kv4yw*y1vcluxanqrhs^#quobk=yti*08$3v"
export DJANGO_DEBUG="True"

# Proyect crfitness
export DB_NOMBRE="dbdjango"
export DB_USUARIO="postgres"
export DB_CONTRASENA="123456"
export LLAVE="6vf36_3=@xf4wlz3^3@n#mai$9pvi5hkzi&*q3f45hl*ah*!!v"
export SENDGRID_API_KEY="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"
export DEBUG="True"
export HOST="localhost"
export PORT="5432"
export CORREO="dragonmanjoseph@gmail.com"
export CORREO_PASSWORD="udzaeafljtpudcql"


export CURPROJECT=""
export TERMINAL=st
export BROWSER=google-chrome
export HOSTNAME=$HOST
export EMAIL="joseph.zamora64@yahoo.com"

alias chrom="chromium-browser --disable-gpu-driver-bug-workarounds --enable-native-gpu-memory-buffers & disown"
#  alias Proyect="cd ~/Proyects/$CURPROJECT"
alias Proyects="cd ~/Proyects/"
alias la="ls -a"
#  alias trash="rm -rf"
alias rstudio="/usr/lib/rstudio/bin/rstudio"
alias eclipse="~/Downloads/eclipse/eclipse & disown"
alias xampp="/opt/lampp/manager-linux-x64.run"
alias weather="curl wttr.in"
alias webstorm="/opt/WebStorm-191.6707.60/bin/webstorm.sh"

function cd {
    builtin cd "$@" && ls -F
}
function trash {
    rm -rf "$@" && ls -F
}
function cat {
    bat "$@"
}
function Proyect {
    eval "$(ls ~/Proyects | dmenu -i | python3 -c 'import sys;print("cd ~/Proyects/"+sys.stdin.read().rstrip().replace(" ","\\ "))')"
}
function sha {
    if [ -z "$1" ]
    then
        echo "No argument detected"
        return 1
    elif [ ! -f  $1 ]
    then
        echo "File does not exist"
        return 2
    else
        echo "Enter the original SHA256: "
        read inp
        sha256sum $1 | awk '{print $1}' | python3 -c "print(input() == '$inp')"
        return 0
    fi
}

function md5 {
    if [ -z "$1" ]
    then
        echo "No argument detected"
        return 1
    elif [ ! -f  $1 ]
    then
        echo "File does not exist"
        return 2
    else
        echo "Enter the original SHA256: "
        read inp
        md5sum $1 | awk '{print $1}' | python3 -c "print(input() == '$inp')"
        return 0
    fi
}

tmux
export RANGER_LOAD_DEFAULT_RC=false

stty -ixon
#  compton -o 0.1 > /dev/null 2>&1 & disown
feh --bg-scale ~/.config/wall.jpeg
# NOTE remember commands
# neomutt
# sc-im
# ranger
