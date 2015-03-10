set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

" Color schemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'

call vundle#end()
syntax on
filetype plugin indent on

" Turn on syntax highlighting
syntax enable

" Set colorscheme
set background=dark
colorscheme solarized

