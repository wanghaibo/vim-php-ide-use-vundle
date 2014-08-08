这不是一个告诉你为什么要使用vim的博客，这(应该使用vim)非常明显。如果你不认为这样，读一下 [Why do those nutheads use Vi？](http://www.viemu.com/a-why-vi-vim.html)相应的，这是一篇关于把vim作为完全成熟的php项目IDE的教程。大多数vim使用者只是在自己电脑上偶尔使用或者在ssh远程会话中使用。在这里，我要告诉你，vim可以被配成成比你最喜欢的IDE更加具备效率和生产力。(以下文章经过精简)[原文](http://joncairns.com/2012/05/using-vim-as-a-php-ide/)

1. 为什么打扰你
2. 开始吧
3. php语法高亮
4. php语法检查和聆听功能
5. tags和自动补全
6. Codesniffer 和md检测支持
7. PHPUnit 支持
8. Xdebug 整合
9. 所有东西在一个简洁的包里面

如果你已经迫不及待的想要开始尝试，直接跳到第九节安装我的vim配置
###为什么打扰你
我在过去的几年内使用过很多php项目的ide： Eclipse, Aptana, Komodo Edit/IDE, Netbeans and PHPStorm。大多数这些ide的问题在于速度慢和占资源：他们吃掉你的内存并独占你的cpu。另外一个问题是键盘快捷键和命令：用键盘可能做到任何事情，而且很多事情要比用鼠标操作快的多，这要求你不断的在鼠标和键盘之间切换。这听起来好像不是一个大问题，但是花了几个月时间来学习vim之后，这些看起来是如此让人感到沮丧。

###开始吧
如果在这之前你从未使用过vim，尝试一下[这篇教程](http://www.viemu.com/a-why-vi-vim.html)和[Vim cheat sheet](http://www.tuxfiles.org/linuxhelp/vimcheat.html)

###php语法高亮
vim能读懂php，可以通过[php.vim](http://www.vim.org/scripts/script.php?script_id=1571)来加强

###php语法检查和聆听功能
大多数ide会定期的执行php语法解析，vim的一个亮点就是你可以非常简单的执行命令行
<code>
:!php -l %
</code>
[PHP QA tools ](https://github.com/joonty/vim-phpqa)可以提醒[quickfix](http://vimdoc.sourceforge.net/htmldoc/quickfix.html)

当然还有支持更多语言的插件供使用[syntastic](https://github.com/scrooloose/syntastic)

###tags和自动补全
自动补全和在多文件中跳转到class和function定义的地方是大多数ide提供的功能。所有的ide通过创建定义数据库来实现，许多人认为这是为啥不用vim的一个原因。实际上不是这样的。

万能补全是vim7+的一项功能，她通过读通过ctags生成的tag文件来工作。这个文件包含了项目中所有类，方法和变量的定义。你可以使用
<code>
<c-x><c-o>
</code>
来在插入模式汇总进行补全

####一个更快的方式
个人使用的是vim 的local keyword completion （只能在当前文件补全）

####如何产生ctags
[ctags](http://ctags.sourceforge.net/)
在php顶级目录中使用以下命令：
<code>
ctags-exuberant -f php.tags --languages=PHP -R
</code>
然后告诉vim  tags的位置
<code>
:set tags=~/path/to/php.tags
</code>

插入模式下键入
<code>
 <c-x><c-o>
</code>
进入补全模式
键入
<code>
<c-]>
</code>
去class定义的地方

另外一个简洁的方式，键入：
<code>
:tag MyLovelyClass
</code>
然后键入回车

推荐一个插件[phpcomplete plugin](http://www.vim.org/scripts/script.php?script_id=3171)加强了万能补全
[SuperTab](http://www.vim.org/scripts/script.php?script_id=1643)可以通过tab建来触发补全

####自动产生tag
手动更新tags是非常蛋疼的，本文作者自己写了一个插件[taggatron](https://github.com/joonty/vim-taggatron)


###Codesniffer and md
[PHP QA tools](http://www.vim.org/scripts/script.php?script_id=3980) 

###phpunit
[PHPUnitQF](http://www.vim.org/scripts/script.php?script_id=4054)

###Xdebug 整合
不介绍了

###一键安装
* [NERDTree](http://www.vim.org/scripts/script.php?script_id=1658)文件树
* [Fugitive](http://www.vim.org/scripts/script.php?script_id=2975)最佳git插件
* [Ctrl-P](https://github.com/kien/ctrlp.vim)超级快的打开文件和查找文件
* EasyMotion 
* Vim-Sauce
* Syntastic
* UltiSnips  代码片段模板
* PDV  文档生成工具
* Skeletons  php文件骨架生成器
* Syntastic 检测PHPMD linting PHP_CodeSniffer 
* Easymotion 字符查找加强
* ctrlp 快速文件打开
* zencodeing   















