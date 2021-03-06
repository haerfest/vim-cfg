" Windows:
"   > cd %USERPROFILE%
"   > mklink    _vimrc   vim-cfg\.vimrc
"   > mklink /D vimfiles vim-cfg\.vim

if has('win32') && has('gui')
  set guifont=Consolas:h20
end

" Use the host's clipboard.
set clipboard=unnamed

" Hide the tool bar.
set guioptions-=T

" Show status bar.
set laststatus=2

" Show line numbers.
set number

" Don't wrap long lines.
set nowrap

" Enable syntax highlighting.
syntax on

" NERDTree.
let g:NERDTreeNodeDelimiter = "\u00a0"

" Lightline.
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
