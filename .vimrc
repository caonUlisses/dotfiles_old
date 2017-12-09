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
Plugin 'moll/vim-node'
Plugin 'godlygeek/tabular'
Plugin 'airblade/vim-gitgutter'
Plugin 'SirVer/ultisnips'
Plugin 'epilande/vim-es2015-snippets'
Plugin 'epilande/vim-react-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'w0rp/ale'
Plugin 'KabbAmine/vCoolor.vim'
Plugin 'ap/vim-css-color'
Plugin 'csscomb/vim-csscomb'

" Scripts
call vundle#end()            " required
filetype plugin indent on    " required
set encoding=utf8

" JavaScript Standards
autocmd bufwritepost *.js silent !standard --fix %
set autoread
let g:ale_linters = {
\   'javascript': ['standard'],
\}

" Emmet
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

" Visuals
syntax on
colorscheme adventurous
let &t_8f="\<Esc>[38;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;%lu;%lu;%lum"

" Keymaps
map <Leader><tab> :NERDTreeToggle<CR>
nmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>vpi :PluginInstall<cr>
nmap <Leader>vpu :PluginUpdate<cr>
nmap <Leader>vpc :PluginClean<cr> y <cr>
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:vcoolor_disable_mappings = 1
nmap <Leader>c :VCoolor <cr>
let g:vcoolor_map = '<leader>g'
nnoremap n nzz
nnoremap N Nzz
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
autocmd FileType css noremap <buffer> <leader>bc :CSScomb<CR>
autocmd BufWritePre,FileWritePre *.css,*.less,*.scss,*.sass silent! :CSScomb

" Spacing
set expandtab
set tabstop=2
set shiftwidth=2
set number
set smartindent
set clipboard=unnamed

" Source vimrc file on save
augroup autosourcing
		autocmd!
		autocmd BufWritePost .vimrc source %
augroup END
