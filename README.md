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
    echo "/usr/local/lib" >> python2.7.conf | sudo mv python2.7.conf /etc/ld.so.conf.d/python2.7.conf  
    ldconfig 
    mkdir -p ~/bin
    ln -s /usr/local/bin/python2.7 ~/bin/python
    echo "export PATH=$HOME/bin:$PATH" >> ~/.bashrc 
    source ~/.bashrc
    ```
    
5. youcompleteme https://github.com/Valloric/YouCompleteMe/ (cmake >=2.8)
    ```Shell
    cd ~
    mkdir ycm_build
    cd ycm_build
    
    export LIBS=-lpython2.7  
    cmake -G "Unix Makefiles" -DPYTHON_LIBRARY=/usr/local/lib/libpython2.7.so              -DPYTHON_INCLUDE_DIR=/usr/local/include/python2.7 . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
    make ycm_support_libs
    ```
    
6. phpcs --config-set show_warnings 0 
7. ctags 5.6不支持abstract  可以使用ctags5.8及以上版本http://ctags.sourceforge.net/来实现
    ```Shell
    ctags --langmap=php:.engine.inc.module.theme.php  --php-kinds=cidf --languages=+PHP,-JavaScript  -R
    ```
8. Error: python-devel conflicts with python 

    ```Shell
    yum clean all
    yum install yum-utils
    yum-complete-transaction
    yum update
    ```
