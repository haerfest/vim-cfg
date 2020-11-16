" Windows:
"   > cd %USERPROFILE%
"   > mklink    _vimrc   vim-cfg\.vimrc
"   > mklink /D vimfiles vim-cfg\.vim

if has('win32') && has('gui')
  set guifont=Consolas:h20
end

" Use the host's clipboard.
set clipboard=unnamed

" Hide some UI elements.
set guioptions-=m  " menu bar
set guioptions-=T  " tool bar

" Show status bar.
set laststatus=2

" Show line numbers.
set number

" Enable syntax highlighting.
syntax on

" NERDTree.
let g:NERDTreeNodeDelimiter = "\u00a0"
