" -----------------------------------------------------------------------------
"  Looks.
" -----------------------------------------------------------------------------

if has("gui_running")

  " Use this font and size.
  if has("mac")
    set guifont=GohuFont:h14
  elseif has("gui_gtk")
    set guifont=Mensch\ 10
  endif

  " Use this color scheme.
  colorscheme zenburn

  " Disable distracting user interface elements.
  set guioptions-=m  " menu bar
  set guioptions-=T  " tool bar
  set guioptions-=r  " right scroll bar
  set guioptions-=R  " also not for split windows
  set guioptions-=l  " left scroll bar
  set guioptions-=L  " also not for split windows
  set guioptions-=b  " bottom scroll bar
  set guioptions-=e  " native tabs

  " Highlight the current line.
  set cursorline

endif

" Show line numbers in the left column.
set nu

" Show cursor position in the status bar.
set ruler

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

" Insert two spaces for each tab.
set expandtab
set tabstop=2

" Indent with two spaces.
set shiftwidth=2

" Enable filetype-specific indentation.
if has("autocmd")
  filetype plugin indent on
endif

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
elseif has("unix")
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
set nofoldenable       " don't fold by defeault

" Keep searching for a TAGS file up the directory hierarchy.
set tags=tags;/

" -----------------------------------------------------------------------------
"  Tagbar.  See http://majutsushi.github.io/tagbar/.
" -----------------------------------------------------------------------------
nmap <silent> <F8> :TagbarToggle<CR>


" -----------------------------------------------------------------------------
"  NerdTree.  See https://github.com/scrooloose/nerdtree.
" -----------------------------------------------------------------------------
nmap <silent> <F2> :NERDTreeToggle<CR>
