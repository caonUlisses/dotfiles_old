" General settings
set autowriteall
set relativenumber
let mapleader = ","

" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'emhaye/ceudah.vim'
Plugin 'Dru89/vim-adventurous'
Plugin 'Valloric/YouCompleteMe'

" Scripts
call vundle#end()            " required
filetype plugin indent on    " required

" Visuals
syntax on
set t_Co=256
set background=dark
set termguicolors
colorscheme adventurous

" Keymaps
map <Leader><tab> :NERDTreeToggle<CR>

" Source vimrc file on save
augroup autosourcing
		autocmd!
		autocmd BufWritePost .vimrc source %
augroup END
