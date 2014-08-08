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

set hlsearch                  "�����ȷ���
set backspace=2               "����ʱ�õ��˼�ɾ��
set autoindent                 "�Զ�����
set ruler                      "����ʾ���һ�е�״̬
set showmode                 "���½���һ�е�״̬
set nu                        "������ÿһ�е���ǰ����ʾ�к�
set bg=dark                   "��ʾ��ͬ�ĵ�ɫɫ��
syntax on                     "�����﷨���飬��ɫ��ʾ
set wrap                      "�Զ�����
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab                  "��tab�滻Ϊ��Ӧ�����ո�
set smartindent

set encoding=utf8               "�����ڲ�����Ϊutf8
set fileencoding=utf8            "��ǰ�༭���ļ�����
set fileencodings=uft8-bom,utf8,gbk,gb2312,big5   "��֧�ֱ�����ļ�
"���consle�������
language messages zh_CN.utf-8
"����˵�����
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" ��windows���������share clipboard with windows
set clipboard+=unnamed

set guifont=Consolas:h12
set t_Co=256
colorscheme molokai
set guioptions-=m
set guioptions-=T

" NERDTree��ݼ�����
map <F10> :NERDTreeToggle<CR>
" PDV
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR>
"ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
