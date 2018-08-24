" prevent forced vi compatibility
set nocompatible

" setup reads for filetypes and using filetype plugins
:filetype on
:filetype plugin on

" set syntax highlighting on
syntax on

" set the runtime path to include Vundle and initialize it
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree' 	" the nerd tree file organizer plugin
Plugin 'itchyny/lightline.vim' 	" our light line lightweight statusbar 

" All plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" View number lines
set number

" Overrides
inoremap <leader>{ {}<Esc>ha<return><Esc>O

set laststatus=2 " this allows us to see the light line, for whatever reason
