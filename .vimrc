" let mapleader = ','
" noremap \ ,

set nocompatible              " be iMproved, required
filetype off                  " required

" Install Vundle first: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'danro/rename.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'bling/vim-airline'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'scrooloose/syntastic'
Plugin 'vim-ruby/vim-ruby'
Plugin 'elixir-lang/vim-elixir'
Plugin 'benmills/vimux'
Plugin 'spiegela/vimix'
Plugin 'stephpy/vim-yaml'
Plugin 'pangloss/vim-javascript'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ap/vim-css-color'

Plugin 'mkarmona/colorsbox'
Plugin 'easymotion/vim-easymotion'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rking/ag.vim'

if has('mac')
  Plugin 'Valloric/YouCompleteMe'
endif

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let NERDSpaceDelims=1
let g:vimix_map_keys = 1
let g:session_autosave = 'no'

syntax on

set bs=indent,eol,start

set number

" To allow unsaved buffers by hiding them instead of being forced to close them
set hidden

" Show status line for airline to work even without split window.
set laststatus=2

" Show trailing whitespace
match ErrorMsg '\s\+$'

" Trim Trailing Whitespace
nnoremap <Leader>ttw :%s/\s\+$//e<CR>

if has('mac')
  " Enable copy/paste onto Mac clipboard
  set clipboard=unnamed
endif

" Syntastic Configs
let g:syntastic_elixir_checkers = ['elixir']
let g:syntastic_enable_elixir_checker = 1

" Set faster update for gitgutter - in ms
set updatetime=250

set t_Co=256
syntax enable
set background=dark
colorscheme colorsbox-stbright

nnoremap <C-t><C-t> :tabnew<CR>
nnoremap <C-\> :source ~/.vimrc<CR>
nnoremap <Leader>d :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>
nnoremap <Leader>q :close<CR>
nnoremap <Leader>l :ls<CR>:b<SPACE>

function! CursorPing()
  hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
  hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
  set cursorline cursorcolumn
  redraw
  sleep 1000m
  set nocursorline nocursorcolumn
endfunction

nnoremap <C-P> :call CursorPing()<CR>

" set path=$PWD/**
set path=.,,**
