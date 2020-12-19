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
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030

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
"<C-s>为保存"
map <C-s> <Esc>:w<CR>"
inoremap <C-s> <Esc>:w<CR>"
"<C-a>为全选"
map <C-a> <Esc>ggvG<CR>"
inoremap <C-a> <Esc>ggvG<CR>"

"R为配置生效"
map R :source $VIM\sysinit.vim<CR>
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
noremap J 5j

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


""""""""""""""""""""""""""
"        _               "
"  _ __ | |_   _  __ _   "
" | '_ \| | | | |/ _` |  "
" | |_) | | |_| | (_| |  "
" | .__/|_|\__,_|\__, |  "
" |_|            |___/   "
""""""""""""""""""""""""""


"说明：
"使用vim-plug插件管理器
"项目地址：https://github.com/junegunn/vim-plug

"vim-plug的安装：
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
"相关插件的项目地址为https://github.com/项目名

"UI&Theme
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'mhinz/vim-startify'

" File navigation
Plug 'scrooloose/nerdtree'

" Taglist
Plug 'majutsushi/tagbar'

" Error checking
Plug 'w0rp/ale'

" Auto Complete
"Plug 'Valloric/YouCompleteMe'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
Plug 'yggdroot/indentline' "indentline
Plug 'itchyny/vim-cursorword'
Plug 'lfv89/vim-interestingwords' "word highlight

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }



" Markdown
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'


" Bookmarks
Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line
Plug 'jiangmiao/auto-pairs' "Auto Pairs
Plug 'ctrlpvim/ctrlp.vim' " file search
Plug 'easymotion/vim-easymotion' "quick motion
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim' "search and replace

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'


" Tool
Plug 'vimwiki/vimwiki'
Plug 'itchyny/calendar.vim'
Plug 'Chiel92/vim-autoformat' "format



call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"        _                                _   _   _               "
"  _ __ | |_   _  __ _           ___  ___| |_| |_(_)_ __   __ _   "
" | '_ \| | | | |/ _` |  _____  / __|/ _ \ __| __| | '_ \ / _` |  "
" | |_) | | |_| | (_| | |_____| \__ \  __/ |_| |_| | | | | (_| |  "
" | .__/|_|\__,_|\__, |         |___/\___|\__|\__|_|_| |_|\__, |  "
" |_|            |___/                                    |___/   "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"使用snazzy配色
color snazzy
"使用透明
let g:SnazzyTransparent = 1

"                           === NERDTree ===                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd vimenter * NERDTree  "进入vim后，自动加载目录树
"打开文件时不会自动打开目录树和startify，否则会自动打开目录和startify
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter *
                \   if !argc()
                \ |   Startify
                \ |   NERDTree
                \ |   wincmd w
                \ | endif

noremap ff :NERDTreeToggle<CR>   "按ff可以进入目录树"
noremap <LEADER>v :NERDTreeFind<CR>
"关闭默认显示隐藏文件，需要显示时可以在tree中按I
"let NERDTreeShowHidden=1

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('java', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('cpp', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('c', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('py', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')


"                        === You Complete ME ===                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nnoremap g/ :YcmCompleter GetDoc<CR>
"nnoremap gt :YcmCompleter GetType<CR>
"nnoremap gr :YcmCompleter GoToReferences<CR>
"let g:ycm_autoclose_preview_window_after_completion=0
"let g:ycm_autoclose_preview_window_after_insertion=1
"let g:ycm_use_clangd = 0
"let g:ycm_python_interpreter_path = "/usr/bin/python3"
"let g:ycm_python_binary_path = "/usr/bin/python3"


"                                 === ale ===                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let b:ale_linters = ['pylint']
let b:ale_fixers = ['autopep8', 'yapf']
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
let g:airline#extensions#ale#enabled = 1
map <LEADER>s :ALEToggle<CR>

"                               === Taglist ===                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <silent>F :TagbarToggle<CR>



"                          === MarkdownPreview ===                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:mkdp_path_to_chrome = "google-chrome"
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'chromium'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'



"                         === vim-table-mode ===                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <LEADER>tm :TableModeToggle<CR>



""                        === vim-indent-guide ===                            "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:indent_guides_guide_size = 1
"let g:indent_guides_start_level = 2
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_color_change_percent = 1
"silent! unmap <LEADER>ig
"autocmd WinEnter * silent! unmap <LEADER>ig



"                       === Goyo Focus编辑模式 ===                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <LEADER>gy :Goyo<CR>





"                   === Undotree 版本管理 ===                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:undotree_DiffAutoOpen = 0
map <LEADER>al :UndotreeToggle<CR>




"                    == vim-multiple-cursor ===                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

"                           === vimwiki ===                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimwiki_list = [{
  \ 'automatic_nested_syntaxes':1,
  \ 'path_html': '~/wiki_html',
  \ 'path': '~/wiki',
  \ 'template_path': '~/.vim/sourcefile/vimwiki/template',
  \ 'syntax': 'markdown',
  \ 'ext':'.md',
  \ 'template_default':'markdown',
  \ 'custom_wiki2html': '~/.vim/sourcefile/vimwiki/wiki2html.sh',
  \ 'template_ext':'.html'
\}]

au BufRead,BufNewFile *.md set filetype=vimwiki

let g:taskwiki_sort_orders={"C": "pri-"}
let g:taskwiki_syntax = 'markdown'
let g:taskwiki_markdown_syntax='markdown'
let g:taskwiki_markup_syntax='markdown'




"                          === auto-pairs ===                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}

" 代码注释插件nerdcommenter
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


"                             === calendar ===                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:calendar_frame = 'default'
noremap <LEADER>ac :Calendar<CR>
noremap <LEADER>acc :Calendar -view=clock<CR>
noremap <LEADER>acw :Calendar -view=week<CR>
noremap <LEADER>acm :Calendar -view=month<CR>
noremap <LEADER>acy :Calendar -view=year<CR>



"                             === startify ===                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"快速打开startify
noremap <LEADER>am :Startify<CR>


"                               === ctrlp ===                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map='<C-p>'


"                                === easymotion ===                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap f <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

"                               === autoformat ===                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:formatter_yapf_style = 'pep8'
"au BufWrite * :Autoformat
noremap <LEADER>af :Autoformat<CR>


"                             === vim-gitgutter ===                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set updatetime=100 "100ms

"                                === vim-lsp ===                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:asyncomplete_auto_popup = 1
set completeopt+=preview
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> <f2> <plug>(lsp-rename)
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
"for bash
if executable('bash-language-server')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'bash-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
        \ 'whitelist': ['sh'],
        \ })
endif
let g:ale_linters = {
    \ 'sh': ['language_server'],
    \ }


"                                === python-mode ===                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pymode_python = 'python3'
let g:pymode_python = 'python3'
