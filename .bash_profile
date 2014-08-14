# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
alias 'cms=cd /var/www/html/web/flashcms_wanghaibo'
alias 'nowv=cd evar/www/html/web/flashcms_wanghaibo/applications/input/views/'
alias 'nowc=cd /var/www/html/web/flashcms_wanghaibo/applications/input/controller'
alias 'inputcr=cd /var/www/html/web/flashcms_wanghaibo/cron/input'
alias 'inputs=cd /var/www/html/web/flashcms_wanghaibo/pakage/Input/Service'
alias 'inputb=cd /var/www/html/web/flashcms_wanghaibo/pakage/Input/Business'
alias 'config=cd /var/www/html/web/flashcms_wanghaibo/applications/config'
alias 'tests=cd /var/www/html/web/flashcms_wanghaibo/tests'
alias 'library=cd /var/www/html/web/library'
alias 'gbk=LANG=zh_CN.GBK'
alias 'utf=LANG=zh_CN.UTF-8'
alias 'cs=cd /home/wanghaibo/CrmSync'
alias 'master= cd /var/www/html/web/flashcms_master'
alias 'vim=/usr/local/vim73/bin/vim'
#curl  'http://172.20.23.207:1218/?name=curLogQueue&opt=status'
PATH=$PATH:$HOME/bin:$HOME/go/go/bin:~/.composer/vendor/bin/:/usr/local/src/node-v0.10.28-linux-x64/bin/
export GOPATH=$HOME/go/go
export BOOT=/var/www/html/web/flashcms_wanghaibo/tests/bootstrap.php
alias 'pt=phpunit --bootstrap $BOOT' 
alias 'pk=phpunit-skelgen.phar --bootstrap $BOOT' 
git config --global url."https://".insteadOf git://
export PATH
alias phptags='ctags --langmap=php:.engine.inc.module.theme.php  --php-kinds=cdf --languages=+PHP,-JavaScript  -R'
alias cmstags='phptags -f ~/tags /var/www/html/web/flashcms_wanghaibo/'
alias libtags='phptags -f ~/tags /var/www/html/web/library/'

