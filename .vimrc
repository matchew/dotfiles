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
colorsc darkblue

filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized' 
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'kevinw/pyflakes-vim'
Bundle 'Lokaltog/powerline'
Bundle 'majutsushi/tagbar'
Bundle 'docunext/closetag.vim'

filetype plugin indent on

nnoremap <silent> <F9> : TagbarToggle<CR>
