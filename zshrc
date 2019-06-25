autoload -Uz compinit
compinit

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
antigen bundle common-aliases
antigen bundle git
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

# Tell antigen that I'm done.
antigen apply


# Don't ever use graphical ssh dialog boxes such as gnome-ssh-askpass
unset SSH_ASKPASS

### LESS ###
# Enable syntax-highlighting in less.
# brew install source-highlight
#LESSPIPE=`which src-hilite-lesspipe.sh`
#export LESSOPEN="| ${LESSPIPE} %s"
#export LESS=" -R "
#alias less='less -m -N -g -i -J --underline-special --SILENT'
#alias more='less'

# Homebrew recommendation
export PATH="/usr/local/sbin:$PATH"

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which jenv > /dev/null;
   then
       export PATH="$HOME/.jenv/bin:$PATH"
       eval "$(jenv init -)"
fi

source <(kubectl completion zsh)

