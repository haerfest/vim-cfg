" ------------------------------------------------------------------------------
"  Vundle.
" ------------------------------------------------------------------------------
set nocompatible
filetype off

" Extend the runtime path (rtp).
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
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'

" Color themes.
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'Pychimp/vim-luna'
Plugin 'tomasr/molokai'

" All of your Plugins must be added before the following line.
call vundle#end()
filetype plugin indent on

" -----------------------------------------------------------------------------
"  Looks.
" -----------------------------------------------------------------------------

" Specify font and hide user interface elements.
if has('gui_running')

  if has("mac")
    set guifont=DejaVu_Sans_Mono_for_Powerline:h13
  elseif has("gui_gtk")
    set guifont=Source\ Code\ Pro\ Light:h16
  elseif has("win32")
    set guifont=DejaVu_Sans_Mono_for_Powerline:h10:cANSI
  endif

  set guioptions-=m    " no menu bar
  set guioptions-=T    " no tool bar
  set guioptions-=r    " no right scroll bar
  set guioptions-=R    " also not for split windows
  set guioptions-=l    " no left scroll bar
  set guioptions-=L    " also not for split windows
  set guioptions-=b    " no bottom scroll bar
  set guioptions-=e    " textual tabs
endif

" Use this color scheme.
if has('gui_running')
  colorscheme atom-dark
else
  colorscheme atom-dark-256
endif

" Show line numbers in the left column.
set nu

" Highlight current line.
set cursorline

" Enable syntax highlighting.
syntax on

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

" Use F2 to toggle NERDTree.
noremap <silent> <F2> :NERDTreeToggle<CR>

" Don't start NERDTreeTabs right away.
let g:nerdtree_tabs_open_on_gui_startup=0

" Use nice arrows in NERDTree.
scriptencoding utf-8
let g:NERDTreeDirArrows=1

" Always show a statusline.
set laststatus=2

" Use nice Powerline fonts for Airline.
set encoding=utf-8
let g:airline_powerline_fonts=1

" Show Airline tabs.
let g:airline#extensions#tabline#enabled=1

" Tabs (native and airline) show only the filename, not the path.
set guitablabel=%t
let g:airline#extensions#tabline#fnamemod = ':t'

" CtrlP should follow NERDTree's working directory.
let g:NERDTreeChDirMode=2
let g:ctrlp_working_path_mode='rw'

" Easy bindings for various CtrlP modes.
nmap <leader>b :CtrlPBuffer<cr>
nmap <leader>m :CtrlPMixed<cr>
nmap <leader>u :CtrlPMRU<cr>

" Show me when the <leader> has been pressed.
set showcmd
