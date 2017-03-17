set nocompatible
filetype off

" set the runtime path to include Vundle and initialize it
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'
"Plugin 'powerline/powerline'

" All plugins must be added before the following line
call vundle#end()
filetype plugin indent on

set number

" Overrides
inoremap <leader>{ {}<Esc>ha<return><Esc>O

"Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Powerline setup
set laststatus=2
set term=xterm-256color
set termencoding=utf-8
set guifont=Ubuntu\ Mono\ derivative\ Powerline:10
let g:Powerline_symbols='fancy'

" set gui font
set guifont=Monofur\ for\ Powerline.tff

