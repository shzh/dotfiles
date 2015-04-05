# 256 color support
export TERM=xterm-256color

# Install Antigen if doesn't already exist
if [ ! -f "$HOME/.antigen/antigen/antigen.zsh" ]; then
  git clone https://github.com/zsh-users/antigen.git $HOME/.antigen/antigen
fi

source $HOME/.antigen/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle brew
antigen bundle coffee
#antigen bundle command-not-found
antigen bundle common-aliases
#antigen bundle debian
#antigen bundle gem
antigen bundle git
antigen bundle heroku
antigen bundle lein
antigen bundle osx
antigen bundle pip
antigen bundle python
antigen bundle rails
antigen bundle ruby
antigen bundle rbenv
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
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Homebrew recommendation
export PATH="/usr/local/sbin:$PATH"

# Aliases
alias tmuxconfig="vim ~/.tmux.conf"
alias vimconfig="vim ~/.vimrc"
alias zshconfig="vim ~/.zshrc"
