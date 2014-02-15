# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="myCloud"

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
plugins=(git pip django python brew redis-cli)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Python
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Development
source /usr/local/bin/virtualenvwrapper.sh

export PORT=8000
export PATH=$PATH:/usr/local/opt/ruby/bin:/usr/local:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:
export PATH=$PATH:/usr/local/sbin
export PATH=/Applications/Postgres93.app/Contents/MacOS/bin:$PATH
export PATH=/Applications/Sublime\ Text.app/Contents/SharedSupport/bin:$PATH
export EDITOR='subl -w'

alias dev='cd ~/Development'
alias slime='subl'
# Django General
alias runserver='python manage.py runserver'
alias syncdb='python manage.py syncdb'
alias dtest='python manage.py test'
alias dshell='python manage.py shell'
alias celeryd='python manage.py celery worker --loglevel=info'

# RIPT STUFF
alias ript="cd $HOME/Development/ript && workon ript"
alias maus="cd $HOME/Development/reporting && workon maus"
alias lrun="python local_manage.py runserver"
alias ltest="python local_manage.py test"
alias lshell="python local_manage.py shell"
alias lmigrate="python local_manage.py migrate"
alias rin="ript && ipython notebook"
alias lsync="python local_manage.py syncdb"

# Heroku
alias pshell='heroku run python manage.py shell --remote production'
alias sshell='heroku run python manage.py shell --remote staging'

# Terminal 256 colors
export TERM="xterm-256color"
export PYTHONDONTWRITEBYTECODE=1
export PYTHONUNBUFFERED=True
export VIRTUALENV_DISTRIBUTE=true

# Android
export NDK_ROOT="$HOME/Development/Android/ndk/"
export PATH=$PATH:/Users/aaron/Development/Android/adt-bundle-mac-x86_64-20130219/sdk/platform-tools/

alias love="/Applications/love.app/Contents/MacOS/love"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
