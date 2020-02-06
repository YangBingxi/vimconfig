""""""""""""""""""""""""""""""""""""""""
"                                   _  "
"  _ __   ___  _ __ _ __ ___   __ _| | "
" | '_ \ / _ \| '__| '_ ` _ \ / _` | | "
" | | | | (_) | |  | | | | | | (_| | | "
" |_| |_|\___/|_|  |_| |_| |_|\__,_|_| "
""""""""""""""""""""""""""""""""""""""""
                
"不兼容vi指令"
set nocompatible

set shell=sh

"开启文件识别"
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

"开启高亮"
syntax on

"启用鼠标"
set mouse=a

"设置编码格式
set encoding=utf-8

"保持配色
let &t_ut=''

"设置tab"
set expandtab
set tabstop=2
set shiftwidth=4 "换行时自动缩进列数为4"
set softtabstop=4 "Insert模式下一个tab占4个空格"

"list设置"
set list "显示非打印字符"
set listchars=tab:▸\ ,trail:▫
set scrolloff=5 "在上下移动光标的时候，让其停留在距离底部或顶部5行的位置，这样可以方便查看
set tw=0
set indentexpr=

set backspace=indent,eol,start "让退格键可以从行首到上一行的行尾"
"折叠相关的配置"
set foldmethod=indent
set foldlevel=99 "折叠级别"

"在不同模式下设置不同的光标"
"Cursor settings:
"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

set laststatus=2 "设置总显示状态行"

"保证vim的操作在当前目录下"
set autochdir

"重新打开文件时，让光标回到上一次编辑的地方"
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set cursorline "启用当前光标所在行显示线"
"set cursorcolumn "启用当前光标所在列显示线
set number "开启行号"
set relativenumber "开启相对行号。如不需要，可以将该参数改为norelativenumber"
set wrap "让文本始终显示在窗口内"
set showcmd "开启指令提示，会显示当前输入的内容"
set wildmenu "在普通模式下，会进行模糊补全提示"

set hlsearch "搜索时高亮显示"
exec "nohlsearch"
set incsearch "边输入边高亮显示搜索结果"
set ignorecase "搜索时，忽略大小写"
set smartcase "搜索时，使用智能大小写模糊"

