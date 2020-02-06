""""""""""""""""""""""""""""""""""""""""""""""""
"                              _               "
"  _ __ ___   __ _ _ __  _ __ (_)_ __   __ _   "
" | '_ ` _ \ / _` | '_ \| '_ \| | '_ \ / _` |  "
" | | | | | | (_| | |_) | |_) | | | | | (_| |  "
" |_| |_| |_|\__,_| .__/| .__/|_|_| |_|\__, |  "
"                 |_|   |_|            |___/   "
""""""""""""""""""""""""""""""""""""""""""""""""

"说明：
"插件相关的快捷键在插件配置文件中

"let <LEADER> is space
let mapleader=" "
"不兼容vi指令
set nocompatible
"快捷键打开vimrc
map <LEADER>rc :edit ~/.vimrc<CR>
"Q为退出"
map Q :q<CR>
"S为保存"
map S :w<CR>"
"R为配置生效"
map R :source $MYVIMRC<CR>
"取消s快捷键，s快捷键原为删掉当前字符开始插入"
map s <nop>
"     设置分屏      "
"       左右
map vs :set splitright<CR>:vsplit<CR>
map vsn :set nosplitright<CR>:vsplit<CR>
"       上下
map sp :set splitbelow<CR>:split<CR>
map spn :set nosplitbelow<CR>:split<CR>
"光标在多窗口间移动
"先空格，然后上下左右即可
map <LEADER>k <C-w>k
map <LEADER>j <C-w>j
map <LEADER>h <C-w>h
map <LEADER>l <C-w>l
map <LEADER><up> <C-w>k
map <LEADER><down> <C-w>j
map <LEADER><left> <C-w>h
map <LEADER><right> <C-w>l
"改变分屏的大小
"Ctrl+上下左右键改变分屏大小
map <C-up> :res +5<CR>
map <C-down> :res -5<CR>
map <C-left> :vertical resize +5<CR>
map <C-right> :vertical resize -5<CR>
map <C-k> :res +5<CR>
map <C-j> :res -5<CR>
map <C-h> :vertical resize +5<CR>
map <C-l> :vertical resize -5<CR>


"     行快捷键     "
"  0为行首-为行末  ”
noremap - $

"    定义方向按键   "
"         ^
"         k         "
"     < h   l >     "
"         j         "
"         v

"大写时为移动5个单位"
noremap H 5h
noremap L 5l
noremap K 5k
noremap KJ 5j

"LEADER CR为取消显示搜索结果"
noremap <LEADER><CR> :nohlsearch<CR>

"在vim中打开终端
map <LEADER>sh :term bash<CR>
"
"map <LEADER-i> g;
"map <LEADER-k> g,
" 插入模式下按jj进行退出
inoremap jj <Esc>


"找到文中两个连续相同的字符或单词
map <LEADER>fd /\(\<\w\+\>\)\_s*\1


"开启、关闭拼写检查
"光标停留在提示错误的词下，按 z= 会出现建议
map <LEADER>sp :set spell!<CR>

"快速在锚点间跳转，锚点为"<++>"
map <LEADER>n <Esc>/<++><CR>:nohlsearch<CR>c4l

" 有关括号的设置，英文字符使用插件
"设置当键入大括号时自动补全并缩进4个单位
"imap {<CR> {<CR>}<Esc>O<Tab>
"当键入小括号、中括号时，进行补全，并进入括号内部编辑
"imap [ []<LEFT>
"imap ( ()<LEFT>
imap 【 【】<LEFT>
imap （ （）<LEFT>
imap 《 《》<LEFT>
imap ‘ ‘’<LEFT>
imap “ “”<LEFT>

"sudo 强制写入
cnoremap w!! w !sudo tee %
