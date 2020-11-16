" Windows:
"   > cd %USERPROFILE%
"   > mklink    _vimrc   vim-cfg\.vimrc
"   > mklink /D vimfiles vim-cfg\.vim

if has('win32') && has('gui')
  set guifont=Consolas:h20
end

" NERDTree
let g:NERDTreeNodeDelimiter = "\u00a0"
