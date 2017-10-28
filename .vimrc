" let mapleader = ','
" noremap \ ,

set nocompatible              " be iMproved, required
filetype off                  " required

" vim-plug
" Installation: curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'gmarik/Vundle.vim'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'danro/rename.vim'
Plug 'tomtom/tcomment_vim'
Plug 'bling/vim-airline'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'

Plug 'vim-ruby/vim-ruby'
Plug 'elixir-lang/vim-elixir'
Plug 'isRuslan/vim-es6'
Plug 'benmills/vimux'
Plug 'spiegela/vimix'
Plug 'stephpy/vim-yaml'
Plug 'pangloss/vim-javascript'

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Auto-complete for typescript
Plug 'w0rp/ale' "Asynchronous Lint Engine
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Autocompletion
Plug 'HerringtonDarkholme/yats.vim' " ts extension detection
Plug 'mhartington/nvim-typescript'
Plug 'posva/vim-vue'
Plug 'janko-m/vim-test'
Plug 'tpope/vim-dispatch'

Plug 'mustache/vim-mustache-handlebars'
Plug 'digitaltoad/vim-pug'
Plug 'slim-template/vim-slim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'posva/vim-vue'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ap/vim-css-color'

Plug 'mkarmona/colorsbox'
Plug 'easymotion/vim-easymotion'
Plug 'Raimondi/delimitMate'
" easily search for, substitute, and abbreviate multiple variants of a word
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'rking/ag.vim'

if has('mac')
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --tern-completer' }
endif

" Initialize plugin system
call plug#end()


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

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules|_build|deps)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" Enable deoplete at startup
let g:deoplete#enable_at_startup = 1

" make test commands execute using dispatch.vim
let test#strategy = "dispatch"

" vim-markdown disable folding
let g:vim_markdown_folding_disabled = 1

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

nnoremap <C-P><C-P> :call CursorPing()<CR>

" set path=$PWD/**
set path=.,,**
