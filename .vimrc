" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim 

set nocompatible
set wrap linebreak nolist


syntax on " Enables syntax highlighting by default

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" Don't create *.swp files
set noswapfile 

" Start scrolling the files 5 lines before the end
set scrolloff=5

" Indentation
set autoindent
set cindent
set shiftwidth=4
set noexpandtab
set tabstop=4
set cino=:0,+0,(0,J0,>4,)1,m2


" ---------------------------- REMAPPING ----------------------------
 
" Auto close braces
ino {<CR> {<CR>}<ESC>O
ino {;<CR> {<CR>};<ESC>O

" Remap ctrl-e/y
nno <C-e> <C-e>j
nno <C-y> <C-y>k

" Another way to escape
ino jk <ESC>l

" Add surrounding parenthesis, and stuff
vno () c()<ESC>P
vno {} c{}<ESC>P
vno "" c""<ESC>P
vno [] c[]<ESC>P
vno <> c<><ESC>P

" ----- Several remaps for simplier use of azerty keyboard

" Remap ` for location jump into è
nno è `

nno é ~
nno à @
nno ç ^

" -------------------------------------------------------------------
 
" Command auto completion
set wildmode=list:longest,full
set wildignore+=*.retry
set wildmenu

set showcmd			" Show (partial) command in status line.
set showmatch		" Show matching brackets.

" Search
set smartcase		" Do smart case matching
set incsearch		" Incremental search

set mouse=a		" Enable mouse usage (all modes)

