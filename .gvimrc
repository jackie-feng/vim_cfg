set fileencodings=utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set lines=50 columns=160

set foldenable
set foldmethod=indent
set foldlevelstart=99
nnoremap @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')
let &colorcolumn=join(range(121,121),",")  " 超过120的行宽部分颜色不一致

set linespace=1
set transparency=0
set macligatures
set antialias

set termguicolors
let ayucolor="mirage"
colorscheme zellner

set guifont=Menlo:h15
" set cursorline


