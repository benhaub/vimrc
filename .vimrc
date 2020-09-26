"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Authour: Ben Haubrich                                         "
" File: .vimrc                                                  "
" Synopsis: Vim configurations. See inline documentation        "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" You need to create ~/.vim/.backup and ~/.vim/.swp
set t_Co=256
set background=dark
colorscheme delek
set number "show line numbers
set colorcolumn=80 "display a red bar at the 80 character column
set tabstop=2 "tabs are equivalent to two spaces
set shiftwidth=2 "Number of space characters inserted for indentation
set expandtab "Converts tabs to spaces
set smarttab "Auto tabs for certain code
"noremap is disabling the arrow keys for navigation in normal mode
noremap <up> <Nop>
noremap <down> <Nop>
noremap <left> <Nop>
noremap <right> <Nop>
syntax enable "Syntax highlighting. See vimdoc.sourceforge.net/htmldoc/syntax.html
source $VIMRUNTIME/vimrc_example.vim
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup// "send backups here instead
set directory=~/.vim/.swp//
highlight Normal ctermfg=Yellow "Make the text yellow in Normal mode
highlight Comment ctermfg=Magenta "Comments are purple
"highlight Normal ctermbg=_____ "Can also set the background if you'd like
"See vimdoc.sourceforge.net/htmldoc/syntax.html#:hi-normal-cterm for more
"colours
"See vimdoc.sourceforge.net/htmldoc/intro.html#Normal for more modes.
