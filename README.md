0. brew install vim --env-std --override-system-vim(vim >=74 python>=2.7)
    ```Shell
    ./configure --with-features=huge \  
    --enable-multibyte \  
    --enable-rubyinterp \  
    --enable-pythoninterp \  
    --with-python-config-dir=/usr/local/lib/python2.7/config \  
    --enable-perlinterp \  
    --enable-luainterp \  
    --enable-gui=gtk2 --enable-cscope --prefix=/usr/local/vim74
    ```
    
1. git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
2. git archive --remote=git://github.com/wanghaibo/vim-php-ide-use-vundle.git HEAD _vimrc
3. :PluginInstall
4. python version ：https://github.com/SirVer/ultisnips/issues/307  
    ```Shell
    ./configure --prefix=/usr/local --with-threads --enable-shared CFLAGS=-fPIC  
    make  
    sudo make altinstall  
    ```
    
5. youcompleteme https://github.com/Valloric/YouCompleteMe/(cmake >=2.8)
    ```Shell
    cd ~
    mkdir ycm_build
    cd ycm_build
    
    export LIBS=-lpython2.7  
    cmake -G "Unix Makefiles" -DPYTHON_LIBRARY=/usr/local/lib/libpython2.7.so              -DPYTHON_INCLUDE_DIR=/usr/local/include/python2.7 . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
    make ycm_support_libs
    ```
    
6. phpcs --config-set show_warnings 0 

