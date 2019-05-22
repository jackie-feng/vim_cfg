set langmenu=en              " 设置界面为英文
set backspace=2              " 设置退格键可用
set autoindent               " 自动对齐
set ai!                      " 设置自动缩进
set smartindent              " 智能自动缩进
set relativenumber           " 开启相对行号
set nu!                      " 显示行号
set ruler                    " 右下角显示光标位置的状态行
set incsearch                " 开启实时搜索功能
set hlsearch                 " 开启高亮显示结果
" set nowrapscan               " 搜索到文件两端时不重新搜索
set autoread                 " 自动读取重新载入
set nocompatible             " 关闭兼容模式
set hidden                   " 允许在有未保存的修改时切换缓冲区
set autochdir                " 设定文件浏览器目录为当前目录
set foldmethod=indent        " 选择代码折叠类型
set foldlevel=100            " 禁止自动折叠
set laststatus=2             " 开启状态栏信息
set cmdheight=1              " 命令行的高度，默认为1，这里设为2
set autoread                 " 当文件在外部被修改时自动更新该文件
set nobackup                 " 不生成备份文件
set noswapfile               " 不生成交换文件
set list                     " 显示特殊字符，其中Tab使用高亮~代替，尾部空白使用高亮点号代替
set listchars=tab:›\ ,trail:•,extends:>,precedes:<,nbsp:.
set expandtab                " 将 Tab 自动转化成空格 [需要输入真正的 Tab 符时，使用 Ctrl+V + Tab]
set updatetime=50
set mouse=a                  " 鼠标可用
set clipboard=unnamed        " 设置剪贴板

" 关闭preview预览窗口,YCM的预览窗口也可以用g:ycm_autoclose_preview_window_after_insertion配置,详情:help YCM
set completeopt-=preview

let &colorcolumn=join(range(121,999),",")  " 超过120的行宽部分颜色不一致
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-7,latin1
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8
" set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
" set fileencoding=utf-8,gbk,gb18030            "当前编辑的文件编码

let mapleader=";"
let g:neocomplcache_enable_at_startup = 1
filetype plugin indent on



set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=T

" --------------- Plug -------------------
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'                                                 " 注释
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }                          " 文件树
Plug 'airblade/vim-gitgutter'                                                   " 行号显示改动信息
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle'}                   " 文件树git
Plug 'sheerun/vim-polyglot'                                                     " 语言包
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }                              " golang 工具包
Plug 'tpope/vim-fugitive'                                                       " git diff
Plug 'gregsexton/gitv'                                                          " git log
" Plug 'kien/ctrlp.vim'                                                           " 文件搜索
Plug 'Valloric/YouCompleteMe', { 'do': '~/.vim/plugged/YouCompleteMe/install.sh'}                 " 代码补全
Plug 'Yggdroot/indentLine'                                                      " 对齐辅助线

" 设置项目根目录
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-rails'                                                          " rails 插件
Plug 'vim-ruby/vim-ruby'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim' " { 'on': 'Files' }
Plug 'mileszs/ack.vim'
Plug 'dyng/ctrlsf.vim'                                                          " 全文搜索插件
" Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
" Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

" color schema
Plug 'gosukiwi/vim-atom-dark'
Plug 'tomasr/molokai'
Plug 'ayu-theme/ayu-vim' " or other package manager
Plug 'altercation/solarized'
call plug#end()


set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme molokai

syntax enable
" ---------- lightline ------------
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
" ------------YouCompleteMe ---------
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>>'
let g:ycm_auto_trigger = 1   " 自动弹出提示
" let g:ycm_always_populate_location_list = 1
" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_autoclose_preview_window_after_insertion = 1

" ------------- gocode ---------------
let g:go_echo_go_info = 0

" --------------- vim-polyglot -----------
let g:polyglot_disabled = ['markdown']

" -------------- fzf + ag -----------------
" 感觉👇下面的 ctrlsf 功能更加强大
nnoremap <Leader>\ :Ack!<Space>
command! -bang -nargs=* Ag
      \ call fzf#vim#ack(<q-args>,
      \                 <bang>0 ? fzf#vim#with_preview('up:60%')
      \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
      \                 <bang>0)

" --------------- ctrlsf ----------------
let g:ctrlsf_context = '-B 2 -A 2'
let g:ctrlsf_default_root = 'project'
let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_winsize = '30%'
let g:ctrlsf_selected_line_hl = 'op'
let g:ctrlsf_auto_focus = {
       \ "at" : "start",
       \ }
let g:ctrlsf_position = 'left'
let g:ctrlsf_mapping = {
      \ "openb": { "key": "o", "suffix": "<C-w>p" },
      \ "next": { "key": ["n", "<C-j>"] },
      \ "prev": { "key": ["N", "<C-k>"] },
      \ }

" --------------- nerdcommenter --------------
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


" --------------- nerdtree ---------------
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1

" --------------- nerdtree-git-plugin --------------
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" --------------- ctrlp ------------------
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'

" -------------fzf and ag-settings---------------------
nmap <C-o> :tabnew<CR>:Files<CR>
nmap <C-p> :Files<CR>
nmap <Leader>s :Ack!<CR>
if executable('ag')
    let g:ackprg = 'ag --vimgrep --ignore node_modules --ignore dist'
    let g:ackpreview = 1
endif

" search lines in files
cnoreabbrev Ack Ack!

" -------------nerd-commenter--------------------
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" ------------------ git --------------------
let g:gitgutter_sign_added = 'A'
let g:gitgutter_sign_modified = 'M'
let g:gitgutter_sign_removed = 'R'
let g:gitgutter_sign_removed_first_line = '✋'
let g:gitgutter_sign_modified_removed = '😳'

" ------------------- vim-go -------------------

let g:go_fmt_command = "goimports"
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_def_mode = 'godef'
let g:go_decls_includes = "func,type"

" ----------------- ctags -----------------------
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" ------------------ mapping -------------------

nmap <Leader>y "*y
nmap <Leader>p "*gp
nmap <Leader><space> :nohlsearch<cr>
nmap <Leader>t :NERDTreeToggle<CR>
nnoremap <Leader>f :CtrlSF<Space>
nnoremap <Leader><Space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
nnoremap <C-\> gt
nnoremap <Leader>m :tabc<CR>
nnoremap <Leader>n :tabnew<CR>
nnoremap <Leader>d :vsp<CR>
nnoremap <Leader>D :sp<CR>
nnoremap <Leader>q :q<CR>
nnoremap <C-m> :tabc<CR>
nnoremap <C-n> :tabnew<CR>
nnoremap <tab> <C-W><C-W>
nnoremap <C-S-UP> dd<UP>P
nnoremap <C-S-DOWN> ddp
nnoremap <C-h> ^
nnoremap <C-l> $
imap <C-S-UP> <esc>dd<UP>Pi
imap <C-S-DOWN> <esc>ddpi

" ------------- macvim 快捷键 -----------
" command + d
map <D-d> dd
imap <D-d> <esc>ddi
" command + shift + f
nmap <D-F> :CtrlSF<Space>
imap <D-F> <esc>:CtrlSF<Space>
" command + shift + h
nmap <D-H> v^
imap <D-H> <esc>v^
" command + shift + l
nmap <D-L> v$<left>
imap <D-L> <esc>v$<left>
" command + shift + p
nmap <D-P> :Files<CR>
imap <D-P> <esc>:Files<CR>
" command + /
imap <D-/> <esc>;cc
nmap <D-/> ;cc


" Ctrl + ]            多选择跳转
nmap <c-]> g<c-]>
vmap <c-]> g<c-]>

" Ctrl + T            跳回原位置
nmap <c-t> :pop<cr>

" Ctrl + U            简化全能补全按键
imap <c-u> <c-x><c-o>

" 编辑模式下也能翻页
imap <c-b> <esc><c-b>i
imap <c-f> <esc><c-f>i

" Ctrl + H            光标移当前行行首[插入模式]、切换左窗口[Normal 模式]
imap <c-h> <left>

" Ctrl + J            光标移下一行行首[插入模式]、切换下窗口[Normal 模式]
imap <c-j> <down>

" Ctrl + K            光标移上一行行尾[插入模式]、切换上窗口[Normal 模式]
imap <c-k> <up>

" Ctrl + L            光标移当前行行尾[插入模式]、切换右窗口[Normal 模式]
imap <c-l> <right>

" \gd                 打开 Git 文件对比模式 [竖直] [GitGutter 插件]
nmap <leader>gd :Gvdiff<cr>
" 打开log(~= gloga), 并查看commit。[gitv插件]
nmap <leader>gg :gitv --all<cr>

" \rt                 一键替换全部 Tab 为空格
nmap <leader>rt <esc>:retab<cr>
" 超过120的行宽显示灰色
highlight ColorColumn guibg=#2d2d2d ctermbg=0

" insert模式下,向下滚屏
imap <c-e> <esc><c-e>i
" insert模式下,向上滚屏
imap <c-y> <esc><c-y>i
