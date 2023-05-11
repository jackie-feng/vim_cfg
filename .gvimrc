set fileencodings=utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set lines=50 columns=160

set foldenable
set foldmethod=indent
set foldlevelstart=99
nnoremap @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')

" set linespace=5
set transparency=1
set macligatures
set antialias

set guifont=Menlo:h15
" set cursorline
