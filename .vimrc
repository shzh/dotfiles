set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim'

" Color schemes
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on

" Turn on syntax highlighting
syntax enable

" Set colorscheme
set background=dark
colorscheme solarized
