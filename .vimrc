set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" -- PLUGINS --

Plugin 'scrooloose/syntastic'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-dispatch'
Plugin 'ctrlpvim/CtrlP.vim'
Plugin 'vim-scripts/DrawIt'
Plugin 'majutsushi/tagbar'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'SirVer/ultisnips'


call vundle#end()            " required
filetype plugin indent on    " required

" ----

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_w = 0
let g:syntastic_check_on_wq = 0

" let g:syntastic_python_flake8_args = "--max-complexity 10"

command Nostyle let g:syntastic_quiet_messages = { "type": "style" } | edit
command Style let g:syntastic_quiet_messages = { } | edit

" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

" make backspaces more powerfull
set backspace=indent,eol,start

set ruler                           " show line and column number
syntax on   			" syntax highlighting
set showcmd 			" show (partial) command in status line

set backupdir=~/.vim/backup,/tmp
set directory=~/.vim/swp
set undodir=~/.vim/undo

let g:SuperTabDefaultCompletionType = "<c-n>"

let g:airline_left_sep=''
let g:airline_right_sep=''
set laststatus=2 " Makes airlien load correctly, somehow

let g:jedi#smart_auto_mappings = 0

" Make coppy buffer better
set viminfo-=<50,s10

" Only set this inv-var in vim, or else pip explodes
let $PYTHONPATH = '/cygdrive/e/git/Sky-sniperduel/libs/'

" So fugitives Gdiff is vertical
set diffopt+=vertical

let g:ctrlp_root_markers = ['Horque_Debug.exe']
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Tagbar
nmap <C-t> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" OH MY GOD
set relativenumber
