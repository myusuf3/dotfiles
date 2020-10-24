" Copyright 2012 Mahdi Yusuf, all rights reserved.


set nocompatible                    " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                         " display incomplete commands
filetype plugin indent on           " load file type plugins + indentation

"" Whitespace
set nowrap                          " don't wrap lines
set tabstop=4 shiftwidth=4          " a tab is two spaces (or set this to 4)
set expandtab                       " use spaces, not tabs
set backspace=indent,eol,start      " backspace through everything in insert mode
set list
set term=screen-256color            " setting colors when vim is inside tmux
" MacVim Settings
:set guifont=Monaco:h12

"Auto Commands
:autocmd BufWrite *.py %retab                 " retab python files on write
":autocmd BufWrite *.html :normal gg=G        " reindent html files on save

"Abbreviations
:iabbrev @@     yusuf.mahdi@gmail.com
:iabbrev ccopy  Copyright 2020 Mahdi Yusuf, all rights reserved.
:iabbrev pdb    # XXX BREAKPOINT XXX <cr>import pdb; pdb.set_trace()
:iabbrev ppython #!/usr/bin/env python <cr>#-*- coding: utf-8 -*-

"" Searching
set hlsearch                        " highlight matches
set incsearch                       " incremental searching
set ignorecase                      " searches are case insensitive...
set smartcase                       " ... unless they contain at least one capital letter

"" Mappings
nmap <F8> :TagbarToggle<CR>         " mapping f8 to TagbarToggle
nmap <F2> :NERDTreeToggle<CR>       " mapping f2 to NERDTreeToggle
nmap <F3> :NumbersToggle<CR>        " mapping f3 to NumbersToggle
nmap <F4> :NumbersOnOff<CR>         " mapping f4 to NumbersOnOff
noremap <F5> :GundoToggle<CR>       " mapping f5 to Gundo
noremap <F9> :Gcommit<CR>           " mapping f9 to Gcommit
noremap! jj <Esc>                   "<Esc> to jj

"" Mapping 
let mapleader = ","                 " setting leader to , 


" Disable Pylint on Save
"let g:pymode_lint_write = 0         " python-mode

" Enable python folding
let g:pymode_folding = 0            " python-mode

set laststatus=2                    " Always show the statusline

" Enable fancy mode 
let g:Powerline_symbols = 'fancy'   " Powerline

"SWAGG
set relativenumber                           " setting line numbers
set colorcolumn=81                           " line to show 81 character mark
set cursorline                               " shows the horizontal cursor line
nmap <leader>ev :vsplit $MYVIMRC<cr>         " mapping to edit my vimrc quickly
nmap <leader>sv :source $MYVIMRC<cr>         " mapping to source my vimrc quickly

"Badass Functions
function! OpenChangedFiles()
  only " Close all windows, unless they're modified
  let status = system('git status -s | grep "^ \?\(M\|A\|UU\)" | sed "s/^.\{3\}//"')
  let filenames = split(status, "\n")
  exec "edit " . filenames[0]
  for filename in filenames[1:]
    exec "sp " . filename
  endfor
endfunction
command! OpenChangedFiles :call OpenChangedFiles()
