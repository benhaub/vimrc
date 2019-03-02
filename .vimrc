colorscheme delek
set number "show line numbers
set colorcolumn=80 "display a red bar at the 80 character column
set ts=2 "tabstop. Equivalent to two spaces
set sw=2 "shift width
set smarttab "Auto tabs for certain code
"noremap is disabling the arrow keys for navigation in normal mode
noremap <up> <Nop>
noremap <down> <Nop>
noremap <left> <Nop>
noremap <right> <Nop>
syntax on "Syntax highlighting
source $VIMRUNTIME/vimrc_example.vim
set backupdir-=. "remove the current directory the list of dirs to send backups
set backupdir^=/tmp/vimbackups "send backups here instead
set undodir-=.
set undodir^=/tmp/vimundo
