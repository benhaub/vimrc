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
highlight Comment ctermfg=LightBlue "Comments are light blue
"highlight Normal ctermbg=_____ "Can also set the background if you'd like
"See vimdoc.sourceforge.net/htmldoc/syntax.html#:hi-normal-cterm for more
"colours
"See vimdoc.sourceforge.net/htmldoc/intro.html#Normal for more modes.
"CurtineIncSw allows for switching between source and header files. Uncomment
"to activate.
"map <Ctrl-Tab> :call CurtineIncSw()<CR>

"DownFor pastes each value starting with startValue in the current cursor
"position and continues down the column changing each by changePerLine for
"numLines.
"Ex:
"  DownFor(200, "/ 10", 4)
"
"Output:
"  200
"  20
"  2
"  0
function! DownFor(startValue, changePerLine, numLines)
  let i = 1
  let @a = a:startValue
  let @a .= a:changePerLine
  let cursorPos = getpos('.')

  while i < a:numLines 
    "Evaluate the string stored in register b
    let @b = eval(@a)
    "Update register a with the new value
    let @a = @b
    let @a .= a:changePerLine
    "Paste the contents of register b
    execute "normal! \"bp"
    "Change the cursor down by one row
    let cursorPos[1] += 1
    "Set the new cursor position
    call setpos('.', cursorPos)
    let i += 1
  endwhile
endfunction 
