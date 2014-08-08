set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=D:\Vim\vimfiles\bundle\Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'PDV--phpDocumentor-for-Vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'molokai'
Plugin 'scrooloose/nerdtree.git'
Plugin 'phpcomplete.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"php complete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

set hlsearch                  "高亮度反白
set backspace=2               "可随时用倒退键删除
set autoindent                 "自动缩排
set ruler                      "可显示最后一行的状态
set showmode                 "左下角那一行的状态
set nu                        "可以在每一行的最前面显示行号
set bg=dark                   "显示不同的底色色调
syntax on                     "进行语法检验，颜色显示
set wrap                      "自动折行
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab                  "将tab替换为相应数量空格
set smartindent

set encoding=utf8               "设置内部编码为utf8
set fileencoding=utf8            "当前编辑的文件编码
set fileencodings=uft8-bom,utf8,gbk,gb2312,big5   "打开支持编码的文件
"解决consle输出乱码
language messages zh_CN.utf-8
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" 与windows共享剪贴板share clipboard with windows
set clipboard+=unnamed

set guifont=Consolas:h12
set t_Co=256
colorscheme molokai
set guioptions-=m
set guioptions-=T

" NERDTree快捷键定义
map <F10> :NERDTreeToggle<CR>
" PDV
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR>
"ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
