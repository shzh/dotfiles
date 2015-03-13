# Install Antigen if doesn't already exist
if [ ! -f "~/.antigen/antigen/antigen.zsh" ]; then
  git clone https://github.com/zsh-users/antigen.git ~/.antigen/antigen
fi

source ~/.antigen/antigen/antigen.zsh

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

# Add heroku to path
export PATH="$PATH:/usr/local/heroku/bin"

# RVM
export PATH="$PATH:~/.rvm/bin"
source /home/szheng/.rvm/scripts/rvm

# Aliases
alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"

