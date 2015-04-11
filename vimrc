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
"Plugin 'bling/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'gmarik/Vundle.vim'
Plugin 'groenewege/vim-less'
Plugin 'guns/vim-clojure-static'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
"Plugin 'klen/python-mode'
Plugin 'pangloss/vim-javascript'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim'}
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-ruby/vim-ruby'

" Colorschemes
Plugin 'altercation/vim-colors-solarized'
"Plugin 'flazz/vim-colorschemes'

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

" Set colorscheme
set background=dark
set t_Co=256

" Solarized
if !has('gui_running')
	" Compatibility for Terminal
	let g:solarized_termtrans=1
endif
let g:solarized_termcolors=256
colorscheme solarized

" Zenburn
"colorscheme zenburn

" Airline
"set noshowmode
"set laststatus=2
"let g:airline_powerline_fonts=1

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
  set undolevels=1000
  set undoreload=10000
endif

" Put backups and swap files elsewhere so no annoyance from git status
set backupdir=~/.vim/backup
set directory=~/.vim/swp

" Search settings
set incsearch
set hlsearch
set ignorecase

" Editor environment
set number
set scrolljump=5
set scrolloff=3
set autoindent
set nowrap
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2

" Move down to wrapped line instead of next line
noremap j gj
noremap k gk

" More natural splitting
set splitbelow
set splitright

" Easier window split jumps
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Map to use system clipboard
map <leader>y "+y
map <leader>p "+p

