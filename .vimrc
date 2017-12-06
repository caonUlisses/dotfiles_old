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
Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }
Plugin 'moll/vim-node'
Plugin 'godlygeek/tabular'
Plugin 'vim-syntastic/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'SirVer/ultisnips'
Plugin 'epilande/vim-es2015-snippets'
Plugin 'epilande/vim-react-snippets'
Plugin 'mattn/emmet-vim'

" Scripts
call vundle#end()            " required
filetype plugin indent on    " required
set encoding=utf8

" Vim-Prettier
let g:prettier#config#print_width = 80
let g:prettier#config#semi = 'false'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#tab_width = 2
let g:prettier#config#require_pragma = 'true'

" Emmet
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

" Syntastic
let g:syntastic_javascript_checkers=['eslint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Visuals
syntax on
" set t_Co=256
" set background=dark
" set termguicolors
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

" Source vimrc file on save
augroup autosourcing
		autocmd!
		autocmd BufWritePost .vimrc source %
augroup END
