## 256 color support
#export TERM=xterm-256color

# Install Antigen if doesn't already exist
if [ ! -f "$HOME/.antigen/antigen/antigen.zsh" ]; then
  git clone https://github.com/zsh-users/antigen.git $HOME/.antigen/antigen
fi

source $HOME/.antigen/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
# Core
antigen bundle brew
antigen bundle common-aliases
antigen bundle git
antigen bundle heroku
antigen bundle osx

# Clojure stuff
#antigen bundle lein

# Ruby stuff
#antigen bundle gem
#antigen bundle bundler
#antigen bundle rails
#antigen bundle rbenv
#antigen bundle ruby

# Python stuff
#antigen bundle pip
#antigen bundle python
#antigen bundle virtualenvwrapper

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Autoenv
#antigen bundle kennethreitz/autoenv

# Tell antigen that I'm done.
antigen apply

# Add heroku to path
export PATH="$PATH:/usr/local/heroku/bin"

# Set up rbenv
#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Homebrew recommendation
export PATH="/usr/local/sbin:$PATH"

# Don't ever use graphical ssh dialog boxes such as gnome-ssh-askpass
unset SSH_ASKPASS

# Aliases
alias tmuxconfig="vim ~/.tmux.conf"
alias vimconfig="vim ~/.vimrc"
alias zshconfig="vim ~/.zshrc"

### LESS ###
# Enable syntax-highlighting in less.
# brew install source-highlight
#LESSPIPE=`which src-hilite-lesspipe.sh`
#export LESSOPEN="| ${LESSPIPE} %s"
#export LESS=" -R "
#alias less='less -m -N -g -i -J --underline-special --SILENT'
#alias more='less'

# Display system information on start
if command -v archey >/dev/null 2>&1; then
  archey -c
fi

