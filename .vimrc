" ------------------------------------------------------------------------------ 
"  Vundle.
" ------------------------------------------------------------------------------ 
set nocompatible
filetype off

if has('win32')
  set rtp+=~/Documents/Shared/vim-cfg/.vim/bundle/Vundle.vim
else
  set rtp+=~/.vim/bundle/Vundle.vim
endif
call vundle#begin()

Plugin 'gmarik/vundle'

" Other bundles go here.
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" Color themes.
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'jonathanfilip/vim-lucius'

" All of your Plugins must be added before the following line.
call vundle#end()
filetype plugin indent on

" -----------------------------------------------------------------------------
"  Looks.
" -----------------------------------------------------------------------------

if has("gui_running")

  " Use this font and size.
  if has("mac")
    set guifont=Source\ Code\ Pro\ Light:h16
  elseif has("gui_gtk")
    set guifont=Source\ Code\ Pro\ Light\ 16
  elseif has("win32")
    set guifont=DejaVu_Sans_Mono:h11:cANSI
  endif

  " Use this color scheme.
  colorscheme lucius

  " Disable distracting user interface elements.
  "set guioptions-=m  " menu bar
  set guioptions-=T    " tool bar
  set guioptions-=r    " right scroll bar
  set guioptions-=R    " also not for split windows
  set guioptions-=l    " left scroll bar
  set guioptions-=L    " also not for split windows
  set guioptions-=b    " bottom scroll bar
  "set guioptions-=e  " native tabs

endif

" Show line numbers in the left column.
set nu

" Highlight current line.
set cursorline

" Enable syntax highlighting.
syntax on

" -----------------------------------------------------------------------------
"  Status line.
"  http://got-ravings.blogspot.nl/2008/08/vim-pr0n-making-statuslines-that-own.html
" -----------------------------------------------------------------------------

set laststatus=2

set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

" -----------------------------------------------------------------------------
"  Behaviour.
" -----------------------------------------------------------------------------

" Copy and paste via the system clipboard.
if has("mac")
  set clipboard=unnamed
elseif has("gui_gtk")
  set clipboard=unnamedplus
endif

" Insert this many spaces for each tab.
set expandtab
set tabstop=2

" Indent with this many spaces.
set shiftwidth=2

" Always continue the indentation of the previous line.
set autoindent

" Don't wrap lines.
set nowrap

" Set the working directory automatically to the file being edited.
set autochdir

if has("mac")
  " Use Command + arrow keys to navigate splits:
  noremap <silent> <D-Up>    :wincmd k<CR>
  noremap <silent> <D-Down>  :wincmd j<CR>
  noremap <silent> <D-Left>  :wincmd h<CR>
  noremap <silent> <D-Right> :wincmd l<CR>
elseif has("unix") || has('win32')
  " Use Alt + arrow keys on Linux.
  noremap <silent> <M-Up>    :wincmd k<CR>
  noremap <silent> <M-Down>  :wincmd j<CR>
  noremap <silent> <M-Left>  :wincmd h<CR>
  noremap <silent> <M-Right> :wincmd l<CR>
endif

" When grepping:
" -n                  Output line numbers
" -r                  Search recusrively
" -I                  Skip binary files
" --exclude-dir=.svn  Skip all .svn directories
" --exclude=TAGS      Skip all TAGS files
set grepprg=grep\ -n\ -r\ -I\ --exclude-dir=.svn\ --exclude=TAGS\ $*\ /dev/null"

" Use F3 and F4 to jump to the previous/next grep hit.
noremap <silent> <F3>   :cprev<CR>
noremap <silent> <F4>   :cnext<CR>
noremap <silent> <S-F3> :cpfile<CR>
noremap <silent> <S-F4> :cnfile<CR>
noremap <silent> <C-F3> :colder<CR>
noremap <silent> <C-F4> :cnewer<CR>

" Folding behaviour.
set foldmethod=indent  " fold based on indentation
set foldnestmax=10     " deepest fold is 10 levels
set nofoldenable       " don't fold by default

" Keep searching for a TAGS file up the directory hierarchy.
set tags=tags;/

if has('win32')
  set keymodel-=stopsel  " arrow keys don't end visual mode
endif

" Don't want backup or swapfiles.
set nobackup
set nowritebackup
set noswapfile

" Tabs show only the filename, not the path.
set guitablabel=%t

" Don't start NERDTreeTabs right away.
let g:nerdtree_tabs_open_on_gui_startup=0
