set t_Co=256
set background=dark
colorscheme darkblue 
set number "show line numbers
set colorcolumn=80 "display a red bar at the 80 character column
set ts=2 "tabstop. Equivalent to two spaces
set sw=2 "shift width
set smarttab "Auto tabs for certain code
set expandtab
"noremap is disabling the arrow keys for navigation in normal mode
noremap <up> <Nop>
noremap <down> <Nop>
noremap <left> <Nop>
noremap <right> <Nop>
syntax on "Syntax highlighting
source $VIMRUNTIME/vimrc_example.vim
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup// "send backups here instead
set directory=~/.vim/.swp//
