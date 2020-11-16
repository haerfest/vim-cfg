" Windows:
"   > cd %USERPROFILE%
"   > mklink    _vimrc   vim-cfg\.vimrc
"   > mklink /D vimfiles vim-cfg\.vim

if has('win32') && has('gui')
  set guifont=Consolas:h20
end

" Always show status bar.
set laststatus=2

" Always show line numbers.
set number

" NERDTree.
let g:NERDTreeNodeDelimiter = "\u00a0"
