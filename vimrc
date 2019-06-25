"Set up Vundle if not already on machine
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
Plugin 'Teradata-syntax'
Plugin 'airblade/vim-gitgutter'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'groenewege/vim-less'
Plugin 'groovy.vim'
Plugin 'guns/vim-clojure-static'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'luochen1990/rainbow'
Plugin 'moll/vim-node'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-expand-region'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tfnico/vim-gradle'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'

" Colorschemes
Plugin 'altercation/vim-colors-solarized'
"Plugin 'jnurmine/Zenburn'
Plugin 'flazz/vim-colorschemes'

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

" Italicize comments
highlight Comment cterm=italic

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
set directory=~/.vim/swap

" Search settings
set incsearch
set hlsearch
set ignorecase

" Editor environment
set number
set scrolljump=5
set scrolloff=3
set autoindent
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2
set nofoldenable
set eol

" Move down to wrapped line instead of next line
noremap j gj
noremap k gk

" More natural splitting
set splitbelow
set splitright

" Easier window split jumps
" first unmap <C-j>
let g:C_Ctrl_j = 'off'
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Remap <leader> to SPACE
let mapleader = "\<Space>"

" Map to use system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Remap to allow cursor to be end of pasted
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Helpful for selecting regions
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" To allow coffee syntax highlighting in iioscript
au BufRead,BufNewFile *.iio setfiletype coffee

" gitgutter turn off column coloring
highlight clear SignColumn

" Enable rainbow parentheses
let g:rainbow_active=1

