syntax on
set nocompatible
set laststatus=2
set encoding=utf-8
set t_Co=256
set nu!
set tabstop=4
set expandtab
set shiftwidth=4
set mouse=a
let $GIT_SSL_NO_VERIFY = 'true'
let g:Powerline_symbols = 'unicode'
set cc=80

filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized' 
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'kevinw/pyflakes-vim'
Bundle 'Lokaltog/powerline'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'majutsushi/tagbar'
Bundle 'docunext/closetag.vim'
Bundle 'mozilla/doctorjs'
Bundle 'vim-scripts/256-grayvim'
Bundle 'vim-scripts/dubs-scheme'
Bundle 'vim-scripts/white.vim'
Bundle 'vim-scripts/Mustang2'
filetype plugin indent on

nnoremap <silent> <F10> : NERDTreeToggle<CR>
nnoremap <silent> <F9> : TagbarToggle<CR>
nnoremap <silent> <F8> : set spell!<CR>
nnoremap <silent> <F7> : set hlsearch!<CR>

colorsc distinguished
