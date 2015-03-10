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
if !has('gui_running')
    " Compatibility for Terminal
    let g:solarized_termtrans=1

    " Make Solarized use 16 colors for Terminal support
    let g:solarized_termcolors=16
endif
colorscheme solarized

