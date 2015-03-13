# Install Antigen if doesn't already exist
if [ ! -f "$HOME/.antigen/antigen/antigen.zsh" ]; then
  git clone https://github.com/zsh-users/antigen.git $HOME/.antigen/antigen
fi

source $HOME/.antigen/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle debian
antigen bundle git
antigen bundle common-aliases
antigen bundle heroku
antigen bundle pip
#antigen bundle command-not-found
antigen bundle gem
antigen bundle ruby
antigen bundle rvm
antigen bundle rails
#antigen bundle virtualenvwrapper

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Autoenv
#antigen bundle kennethreitz/autoenv

# Tell antigen that I'm done.
antigen apply

export PATH="$PATH:/usr/local/heroku/bin"
export PATH="$PATH:$HOME/.rvm/bin"
source /home/szheng/.rvm/scripts/rvm

alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"

