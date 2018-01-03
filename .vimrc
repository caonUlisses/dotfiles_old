" General settings
set autowriteall     " autosave file if wim exits
set relativenumber   " set the line number indicator as relative to line is currently in
let mapleader = ","  " set the <Leader> key as ,

" Vundle
set nocompatible                   " be iMproved, required
filetype off                       " required
set rtp+=~/.vim/bundle/Vundle.vim  " required
call vundle#begin()                " starts vundle

" Plugins
Plugin 'VundleVim/Vundle.vim'           " Vundle Plgin manager
Plugin 'tpope/vim-fugitive'             " Git wrapper
Plugin 'kien/ctrlp.vim'                 " Fuzzy file search (folder wide)
Plugin 'scrooloose/nerdtree'            " Filesystem treeview
Plugin 'emhaye/ceudah.vim'              " Theme
Plugin 'Dru89/vim-adventurous'          " Theme
Plugin 'Valloric/YouCompleteMe'         " Autocomplete
Plugin 'moll/vim-node'                  " NodeJS tools
Plugin 'godlygeek/tabular'              " Code tabulation
Plugin 'airblade/vim-gitgutter'         " Git extras
Plugin 'SirVer/ultisnips'               " Snippets
Plugin 'epilande/vim-es2015-snippets'   " Es2015 Snippets
Plugin 'epilande/vim-react-snippets'    " React snippets
Plugin 'mattn/emmet-vim'                " Emmet for vim
Plugin 'w0rp/ale'                       " Asynchronous Linting Engine for JS
Plugin 'KabbAmine/vCoolor.vim'          " Color picker
Plugin 'ap/vim-css-color'               " Display colors on CSS
Plugin 'csscomb/vim-csscomb'            " Css tools
Plugin 'sickill/vim-monokai'            " Theme
Plugin 'dracula/vim'                    " Theme
Plugin 'plasticboy/vim-markdown'        " Markdown Tools
Plugin 'suan/vim-instant-markdown'      " Instant markdown live-edit
Plugin 'mzlogin/vim-markdown-toc'       " Table of Contents generator for md
Plugin 'itmammoth/doorboy.vim'          " No more 'esc j i } esc k'
Plugin 'tpope/vim-surround'             " Change surroundings
Plugin 'gregsexton/MatchTag'            " Highlight the matching tag
Plugin 'mxw/vim-jsx'                    " JSX funtionallity
Plugin 'christoomey/vim-tmux-navigator' " Tmux keys

" JSX tag highlighting
let g:jsx_ext_required = 1
 
" Scripts
call vundle#end()            " required
filetype plugin indent on    " required
set encoding=utf8            " enables UFT-8

" JavaScript Standards
let g:ale_fixers = {
\   'javascript': ['standard'],
\}

let g:ale_linters = {
\   'javascript': ['standard'],
\}

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 1

" Emmet
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\} " Allows emmet on JSX files

" Calcurse
autocmd BufRead, BufNewFile /tmp/calcurse* set filetype=markdown      " set md
autocmd BufRead, BufNewFile ~/.calcurse/notes/* set filetype=markdown " set md

" NERDTree
let NERDTreeIgnore=['node_modules'] " exclude 'node_modules' from NERDTree

" Visuals
syntax on                          " syntax highlighting
colorscheme dracula                " sets theme
let &t_8f="\<Esc>[38;%lu;%lu;%lum" " fix ale weird looks 
let &t_8b="\<Esc>[48;%lu;%lu;%lum" " fix ale weird looks

" Keymaps
map <Leader><tab> :NERDTreeToggle<CR>
nmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>vpi :PluginInstall<cr>
nmap <Leader>vpu :PluginUpdate<cr>
nmap <Leader>vpc :PluginClean<cr> y <cr>
nmap <Leader>= :split <cr>
nmap <Leader>% :vsplit <cr>
nmap <Leader>ht :highlight NonText ctermfg=0<cr>
nmap <Leader><cr> o <esc> kk <cr>

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
set expandtab             " turn tabs into spaces
set tabstop=2             " each tab will have 2 spaces
set shiftwidth=2          " identation for 2
set number                " show numbers
set smartindent           " make identation work
set clipboard=unnamed     " fix clipboard identation
set autoindent            " set autoindent for newlines
set si
filetype plugin indent on " fix autoindent based on filetype

" ControlP Vim
let g:ctrlp_custom_ignore = 'node_modules\|git' " remove folders from ctrlp

" Source vimrc file on save
augroup autosourcing
		autocmd!
		autocmd BufWritePost .vimrc source %
augroup END
