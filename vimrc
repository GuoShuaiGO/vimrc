let mapleader=" "
"行号的设置
set number
set relativenumber
"展示状态栏
set laststatus=2
"设置鼠标                   先不设置了
"set mouse +=a
"tab键时的大菜单栏
set wildmenu
"设置铃声关闭
set noerrorbells visualbell t_vb=
"更好的配置backspace
set backspace=indent,eol,start
"小写时忽略大小写，大写时不忽略
set ignorecase
set smartcase
"在键入时启动搜索
set incsearch
"换行
set wrap
"搜索高亮
set hlsearch
exec 'nohlsearch'
noremap <LEADER><LEADER> :nohlsearch<CR>
"语法高亮
syntax on
"展示命令
set showcmd
"下划线
set cursorline
"设置TAB
set tabstop=4
set softtabstop=4
"中文设置
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936
"键位设置
inoremap jj <ESC>

map nl :set splitright<CR>:vsplit<CR>
map nh :set nosplitright<CR>:vsplit<CR>
map nk :set nosplitbelow<CR>:split<CR>
map nj :set splitbelow<CR>:split<CR>
map <LEADER><up> :res +5<CR>
map <LEADER><down> :res -5<CR>
map <LEADER><left> :vertical resize -5<CR>
map <LEADER><right> :vertical resize +5<CR>

noremap H 7h
noremap J 5j
noremap K 5k
noremap L 7l


call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" Python
Plug 'vim-scripts/indentpython.vim'


call plug#end()

"颜色设置
color snazzy
let &t_ut=''
map ff :NERDTreeToggle<CR>
"vim和vi的兼容
set nocompatible
"文件格式的兼容
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
"空格的显示
"set list
"光标下总>=5行
set scrolloff=5
