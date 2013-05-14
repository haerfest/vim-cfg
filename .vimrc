" -----------------------------------------------------------------------------
"  Looks.
" -----------------------------------------------------------------------------

if has("gui_running")

  " Use this font and size.
  if has("gui_mac")
    set guifont=GohuFont:h14
  elseif has("gui_gtk")
    set guifont=GohuFont\ 14
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
endif

" Show line numbers in the left column.
set nu

" Show cursor position in the status bar.
set ruler

" Highlight the current line.
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

" Use Command + arrow keys to navigate splits:
" http://vim.wikia.com/wiki/Switch_between_Vim_window_splits_easily
nnoremap <silent> <D-Up>    :wincmd k<CR>
nnoremap <silent> <D-Down>  :wincmd j<CR>
nnoremap <silent> <D-Left>  :wincmd h<CR>
nnoremap <silent> <D-Right> :wincmd l<CR>

" -----------------------------------------------------------------------------
"  Tagbar.  See http://majutsushi.github.io/tagbar/.
" -----------------------------------------------------------------------------
nmap <F8> :TagbarToggle<CR>

" -----------------------------------------------------------------------------
"  NerdTree.  See https://github.com/scrooloose/nerdtree.
" -----------------------------------------------------------------------------
nmap <F2> :NERDTreeToggle<CR>
