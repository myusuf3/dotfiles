# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh


  [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="refined"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-autosuggestions)


source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs...
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH=/usr/local/opt/ruby/bin:/usr/local:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:
export PATH=$PATH:/usr/local/sbin
export PATH=/Applications/Postgres.app/Contents/Versions/12/bin:$PATH
export PATH=$HOME/opt/cassandra/bin:$PATH

export EDITOR='code -w'

# Terminal 256 colors
export TERM="xterm-256color"

# Go stuff
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Android apps
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.fastlane/bin:$PATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
