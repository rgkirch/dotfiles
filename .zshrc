# Path to your oh-my-zsh installation.
export ZSH=/home/$USER/.oh-my-zsh
# export WWW_HOME=http://www.google.com/

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep extendedglob
unsetopt autocd

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git mercurial python command-not-found compleat debian git-extras)

export KEYTIMEOUT=2
bindkey -v

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH="$PATH:$HOME/.gem/ruby/2.3.0/bin"
export PATH="$PATH:$HOME/.gem/ruby/2.2.0/bin"
export PATH="$PATH:/usr/bin/core_perl"
export EDITOR="vim"
#export TERM="screen-256color"
#. /lib/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh
# export MANPATH="/usr/local/man:$MANPATH"
#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=ibus
#export QT_IM_MODULE=ibus
#
# set PATH so it includes user's private bin directories
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export CLASSPATH=".:/usr/local/lib/antlr-4.5.3-complete.jar:$CLASSPATH"
if [ -e /home/richie/.nix-profile/etc/profile.d/nix.sh ]; then . /home/richie/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer


source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"
alias pwdxcl="pwd | xclip -selection clipboard"
alias addall="git add --all :/"
alias fuckoff="poweroff"
alias dpkgbysize="dpkg-query -W --showformat='${Installed-Size;10}\t${Package}\n' | sort -k1,1n"
alias us="setxkbmap -layout us"
alias dv="setxkbmap -layout dvorak"
alias ddstatus="sudo kill -USR1 $(pgrep "^dd$")"
alias dec="xbacklight -dec 6"
alias inc="xbacklight -inc 14"
alias gsm="gnome-system-monitor"
alias fuck="ssh"

BROWSER=/usr/sbin/firefox
EDITOR=/usr/sbin/vim
alias ginitrec="git submodule update --init --recursive"
alias dim="xrandr --output DVI-1 --brightness"
alias gocinder="cd ~/Documents/rgkirch/graphics/cinder/"

alias apti="sudo apt install"
alias wfica.sh="/opt/Citrix/ICAClient/wfica.sh"

alias antlr4='java -Xmx500M -cp "/usr/local/lib/antlr-4.5.3-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java org.antlr.v4.gui.TestRig'

BROWSER=/usr/sbin/firefox
EDITOR=/usr/sbin/vim

if [[ $(hostname)=="delta" ]]; then
    alias cinder="rgkirch; cd glfw/cinder"
    alias rgkirch="cd ~/Documents/rgkirch"
fi

if [[ $(uname -a | grep Ubuntu)=="delta" ]]; then
    alias install="sudo apt-get install"
    alias search="apt-cache search"
else
    alias install="pacaur --noconfirm -S"
fi

# git stuff
alias gad="git add"
alias gst="git status"
alias gad="git add "
# added by Anaconda3 4.4.0 installer
export PATH="/home/richie/anaconda3/bin:$PATH"
