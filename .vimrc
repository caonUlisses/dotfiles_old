" General settings
set encoding=utf8            " enables UFT-8
set autowriteall     " autosave file if wim exits
set relativenumber   " set the line number indicator as relative to line is currently in
let mapleader = ","  " set the <Leader> key as ,

" Vundle
set nocompatible                   " be iMproved, required
call plug#begin()                " starts vundle

" Plugins
Plug 'junegunn/fzf.vim'               " Fzf support
Plug 'gcmt/taboo.vim'                 " Nice Tabs
Plug 'google/vim-maktaba'             " Dart
Plug 'google/vim-glaive'              " Dart
Plug 'google/vim-codefmt'             " Dart
Plug 'natebosch/vim-lsc'              " Dart
Plug 'dart-lang/dart-vim-plugin'      " Dart
Plug 'wendyyuchensun/import-cost-vim' " Import size
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  " NERDColors
Plug 'simeji/winresizer'              " Resize all the things
Plug 'vim-scripts/Mines'              " The only game on my computer
Plug 'majutsushi/tagbar'              " Tagbar
Plug 'terryma/vim-multiple-cursors'   " Multiple cursors? Hell yeah!
Plug 'neoclide/vim-easygit'           " Easy Git
Plug 'tweekmonster/django-plus.vim'   " Django for Christ Sake!
Plug 'Dru89/vim-adventurous'          " Theme
Plug 'morhetz/gruvbox'                " Theme
Plug 'keith/parsec.vim'               " Theme
Plug 'scrooloose/nerdcommenter'       " Easy comment lines
Plug 'KabbAmine/vCoolor.vim'          " Color picker
Plug 'SirVer/ultisnips'               " Snippets
Plug 'Valloric/YouCompleteMe'         " Autocomplete
Plug 'VundleVim/Vundle.vim'           " Vundle Plugin manager
Plug 'airblade/vim-gitgutter'         " Git extras
Plug 'ap/vim-css-color'               " Display colors on CSS
Plug 'christoomey/vim-tmux-navigator' " Tmux keys
Plug 'csscomb/vim-csscomb'            " Css tools
Plug 'dracula/vim'                    " Theme
Plug 'emhaye/ceudah.vim'              " Theme
Plug 'epilande/vim-es2015-snippets'   " Es2015 Snippets
Plug 'epilande/vim-react-snippets'    " React snippets
Plug 'fatih/vim-go'                   " Vim support for go
Plug 'godlygeek/tabular'              " Code tabulation
Plug 'gregsexton/MatchTag'            " Highlight the matching tag
Plug 'itmammoth/doorboy.vim'          " No more 'esc j i } esc k'
Plug 'ctrlpvim/ctrlp.vim'             " CTRLP
Plug 'mattn/emmet-vim'                " Emmet for vim
Plug 'mileszs/ack.vim'                " Ag integration
Plug 'moll/vim-node'                  " NodeJS tools
Plug 'mxw/vim-jsx'                    " JSX funtionallity
Plug 'scrooloose/nerdtree'            " Filesystem treeview
Plug 'sickill/vim-monokai'            " Theme
Plug 'tpope/vim-fugitive'             " Git wrapper
Plug 'tpope/vim-surround'             " Change surroundings
Plug 'w0rp/ale'                       " Asynchronous Linting Engine
Plug 'Galooshi/vim-import-js'         " autoimport for node modules
Plug 'vim-airline/vim-airline'        " airline
Plug 'mhinz/vim-signify'              " git status
Plug 'ternjs/tern_for_vim'            " js autocomplete
Plug 'ryanoasis/vim-devicons'         " icons
Plug 'mkitt/tabline.vim'              " Show tabs

" Nice tabs
set guioptions-=e

" Dart
let g:lsc_server_commands = {'dart': 'dart_language_server'}
let g:lsc_auto_map = {
    \ 'GoToDefinition': '<C-]>',
    \ 'FindReferences': 'gr',
    \ 'NextReference': '<C-n>',
    \ 'PreviousReference': '<C-N>',
    \ 'FindImplementations': 'gI',
    \ 'FindCodeActions': 'ga',
    \ 'DocumentSymbol': 'go',
    \ 'WorkspaceSymbol': 'gS',
    \ 'ShowHover': 'K',
    \ 'Completion': 'completefunc',
    \}

" JSX tag highlighting
let g:jsx_ext_required = 1

" Formatting
augroup autoformat_settings
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType html,css,json AutoFormatBuffer js-beautify
  autocmd FileType python AutoFormatBuffer yapf
augroup END

" Scripts
call plug#end()            " required
set list
set listchars=space:·

" Ag Configs
let g:ackprg = 'ag --nogroup --nocolor --column'

" Airline icons
let g:airline_powerline_fonts = 1

" Tagbar
nmap <Leader>t :TagbarToggle<CR>

" Ultisnips
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" ALE
let g:ale_fixers = {
      \   'javascript': ['standard'],
      \   'python': ['autopep8'],
      \}

let g:ale_linters = {
      \   'javascript': ['standard'],
      \   'python': ['autopep8'],
      \}

let g:ale_fix_on_save = 1

" Git
let g:easygit_enable_command = 1

" Pasting
set pastetoggle=<F2>
set copyindent

" Emmet
let g:user_emmet_settings = {
      \  'javascript' : {
      \      'extends' : ['jsx', 'dart']
      \  },
      \} " Allows emmet on JSX files

" Calcurse
autocmd BufRead, BufNewFile /tmp/calcurse* set filetype=markdown      " set md
autocmd BufRead, BufNewFile ~/.calcurse/notes/* set filetype=markdown " set md

" NERDTree
let NERDTreeIgnore=['node_modules', '.git', '.pub'] " exclude 'node_modules' from NERDTree

" Visuals
syntax on                          " syntax highlighting
colorscheme gruvbox               " sets theme
set background=dark
let &t_8f="\<Esc>[38;%lu;%lu;%lum" " fix ale weird looks
let &t_8b="\<Esc>[48;%lu;%lu;%lum" " fix ale weird looks

" Keymaps
map <Leader>tl :set background=light<CR>
map <Leader>td :set background=dark<CR>
map <Leader><tab> :NERDTreeToggle<CR>
nmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>vpi :PlugInstall<cr>
nmap <Leader>vpu :PlugUpdate<cr>
nmap <Leader>vpc :PlugClean<cr> y <cr>
nmap <Leader>" :split <cr>
nmap <Leader>% :vsplit <cr>
nmap <Leader>ht :highlight NonText ctermfg=0<cr>
nmap <Leader><cr> o <esc> kk <cr>
noremap <Leader><C-J> <C-W><C-J> :q <cr>
noremap <Leader><C-H> <C-W><C-H> :q <cr>
noremap <Leader><C-L> <C-W><C-L> :q <cr>
noremap <Leader><C-K> <C-W><C-K> :q <cr>
nnoremap ; :

map <Leader>bl :bn<cr>
map <Leader>bh :bp<cr>
map <Leader>bd :bd<cr>


nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

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
nnoremap <leader><C-p> :CtrlPTag<cr>

" YouCompleteMe
" highlight Pmenu ctermfg=15 ctermbg=125

" NerdTREE
let NERDTreeShowHidden=1

" CtrlP Vim
let g:ctrlp_show_hidden = 1

" NerdIcons
let g:DevIconsEnableFoldersOpenClose = 1
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeGitStatusNodeColorization = 1
autocmd FileType nerdtree setlocal nolist
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '/'

" Source vimrc file on save
augroup autosourcing
  autocmd!
  autocmd BufWritePost .vimrc source %
augroup END

" CTRL P map
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = 'node_modules\|\v[\/]\.(git|hg|svn|pub)$'

" Show tabs
hi TabLine      ctermfg=Black  ctermbg=Magenta   cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Magenta     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkMagenta  cterm=NONE

" FZF
nmap <c-f> :Ag<cr>

" GIT
nnoremap <Leader>ga :Gadd .<cr>
nnoremap <Leader>gc :Gcommit -m ""<left>
nnoremap <Leader>gp :Gpush origin master<cr>
nnoremap <Leader>gs :Gstatus <cr>
