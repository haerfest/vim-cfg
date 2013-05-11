" -----------------------------------------------------------------------------
"  Looks.
" -----------------------------------------------------------------------------

if has("gui_running")

  " Use this font and size.
  set guifont=Mensch:h14

  " Use this color scheme.
  colorscheme solarized

endif

" Show line numbers.
set nu

" Show cursor position.
set ruler

" Enable syntax highlighting.
syntax on

" -----------------------------------------------------------------------------
"  Behaviour.
" -----------------------------------------------------------------------------

" Insert two spaces for each tab.
set expandtab
set tabstop=2

" Indent with two spaces.
set shiftwidth=2

" Don't wrap lines.
set wrap!

" Use Alt + arrow keys to navigate splits:
" http://vim.wikia.com/wiki/Switch_between_Vim_window_splits_easily
nnoremap <silent> <A-Up>    :wincmd k<CR>
nnoremap <silent> <A-Down>  :wincmd j<CR>
nnoremap <silent> <A-Left>  :wincmd h<CR>
nnoremap <silent> <A-Right> :wincmd l<CR>

" -----------------------------------------------------------------------------
"  Tagbar.  See http://majutsushi.github.io/tagbar/.
" -----------------------------------------------------------------------------
nmap <F8> :TagbarToggle<CR>

" -----------------------------------------------------------------------------
"  NerdTree.  See https://github.com/scrooloose/nerdtree.
" -----------------------------------------------------------------------------
nmap <F2> :NERDTreeToggle<CR>
