
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700
set noswapfile

" Enable filetype plugin
filetype off
filetype plugin on
filetype plugin indent on
syntax enable
au BufNewFile,BufRead *.md set filetype=markdown

" Set to auto read when a file is changed from the outside
set autoread


" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interfacehttp://pages.cs.wisc.edu/~cs367-1/index.html
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the curors - when moving vertical..
set so=7

set wildmenu "Turn on WiLd menu

set ruler "Always show current position

set cmdheight=2 "The commandbar height

"set hid "Change buffer - without saving

" Set backspace config
set backspace=eol,start,indent

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight search things

set incsearch "Make search act like search in modern browsers
set nolazyredraw "Don't redraw while executing macros 

set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=2
set tabstop=2
set smarttab
set autoindent
set softtabstop=2

autocmd FileType make set noexpandtab
"autocmd FileType python set noexpandtab

set lbr
set tw=500

set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines


set guifont=Consolas:h20
colorscheme desertEx

"call pathogen#runtime_append_all_bundles()

set nocompatible

set modelines=0

set encoding=utf-8
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest

let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
set guioptions-=r
set guioptions-=L
set guioptions-=T
let Tlist_Enable_Fold_Column=0
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>

let mapleader = ","
map <leader>w <C-w>
"nmap <Leader>t gt
map <leader>b <C-^>
" For Tabularize 
  nmap <leader>a= :Tabularize /=<CR>
  vmap <leader>a= :Tabularize /=<CR>
  nmap <leader>a: :Tabularize /:\zs<CR>
  vmap <leader>a: :Tabularize /:\zs<CR>
" End Tabularize 

"map <leader>f :FuzzyFinderTextMate<CR>
map <leader>ff :FufFile **/<CR>
map <leader>fb :FufBuffer<CR>

let g:fuf_enumeratingLimit = 20

let g:CommandTMaxHeight = 10
map <leader>t :CommandT<CR>

" Vundle stuff here
"Bundle 'gmarik/vundle'
set backupdir=~/.vim-tmp

au BufNewFile,BufRead *.less set filetype=less
