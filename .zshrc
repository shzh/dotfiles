source ~/git/nonforked/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle debian
antigen bundle git
antigen bundle common-aliases
antigen bundle heroku
antigen bundle pip
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell antigen that you're done.
antigen apply

export PATH="$PATH:/usr/local/heroku/bin"
export PATH="$PATH:$HOME/.rvm/bin"
source /home/szheng/.rvm/scripts/rvm
source /usr/local/bin/activate.sh

alias zshrc="vim ~/.zshrc"
