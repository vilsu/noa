#!/bin/sh

source ~/bin/shells/coding-settings-dev.sh

# Autoload Screen if we aren't in it.  
 if [[ $STY = '' ]]; then 
     screen -aADxR 
 fi


#. ~/bin/shells/tab_completions/git-completion.bash

##### Java
# to use Java packages such as acm.raphics in Java
# to have acm Graphics package : to have Java's manuals for K : 
export CLASSPATH='$CLASSPATH:/Users/cs/Documents/Java/acm.jar:~/bin/Vim/vimdoclet-1.2.tar.gz:/Users/cs/Documents/Python/Codes/K/javaman.py:'

#to get perl codes work
export PERL5LIB='/opt/local/lib/perl5/vendor_perl/5.8.9:'

# to run perl scipts by $ perl script.pl data
export PATH='$PATH:/opt/local/bin:/usr/local/bin:/usr/bin:/bin:/sbin:/usr/bin/perl:'

# To get Fink work
if [ -f /sw/bin/init.sh ]
then
    . /sw/bin/init.sh
fi

# PATH 
# Django : linux-utils : newest screen : xsel : cpmd : rubyGems : --- : perl :
# mysql
# chown
# mysql
# upload.py to upload apps to Rietveld
# shell apps
# markdown
export PATH='/opt/local/bin:/opt/local/sbin:/usr/local/misc-utils:/usr/local/screen-4.0.3:/usr/local/xsel-1.2.0:/usr/local/bin:/usr/bin:/bin:/sbin:$PATH:/usr/bin/perl:/usr/sbin/:/usr/local/mysql/bin:/home/noa/bin/programs-in-PATH/upload/upload.py:/Users/sam/bin/shells/apps-in-path:/Users/Sam/bin/markdown/python-markdown/build'

export MANPATH=/opt/local/share/man:$MANPATH 

# NB you must have /opt/local before /usr/local such that you can run Django
#export PYTHONPATH=$HOME/.python_libraries:/opt/local/lib/python2.6
#export PYTHONPATH=$HOME/.python_libraries:/opt/local/Library/Frameworks/Python.framework/Versions/2.6
#export PYTHONPATH=$HOME/.python_libraries:/opt/local/Library/Frameworks/Python.framework/Versions/2.6/

#export PYTHONPATH=/opt/local/Library/Frameworks/Python.framework/Versions/2.6/:$HOME/.python_libraries:

# markdown-extensions : basics
export PYTHONPATH=/Users/Sam/bin/python/:/opt/local/Library/Frameworks/Python.framework/Versions/2.6/:
# enable this if MacPorts' apps are not working /opt/local/lib/python2.6/site-packages


export DYLD_FALLBACK_LIBRARY_PATH=/usr/lib:/opt/local/lib
