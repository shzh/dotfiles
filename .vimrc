" Set up Vundle if not already on machine
let haveVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    let haveVundle=0
endif

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'gmarik/Vundle.vim'
Plugin 'groenewege/vim-less'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
"Plugin 'klen/python-mode'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-ruby/vim-ruby'

call vundle#end()

if haveVundle == 0
    echo "Installing plugins."
    echo ""
    :PluginInstall
endif
"Finish setting up Vundle

filetype plugin indent on
syntax on

" Turn on syntax highlighting
syntax enable

" Turn on line numbering
set number

" Set colorscheme
set background=dark
set t_Co=256
" Solarized
"if !has('gui_running')
    "" Compatibility for Terminal
    "let g:solarized_termtrans=1
"endif
"colorscheme solarized

" Molokai
"let g:molokai_original=1
"colorscheme molokai

" Zenburn
colorscheme zenburn

" Airline
set noshowmode
set laststatus=2
let g:airline_powerline_fonts=1

"
set autoindent
set ts=4 sts=4 sw=4

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

set hlsearch

