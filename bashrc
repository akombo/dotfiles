# List: Colors
WHITE="\[\033[1;37m\]"
BRIGHTGREEN="\[\033[1;32m\]"
GREEN="\[\033[0;32m\]"
RED="\[\033[0;31m\]"
BRIGHTRED="\[\033[1;31m\]"
CYAN="\[\033[0;36m\]"
GRAY="\[\033[0;37m\]"
BLUE="\[\033[0;34m\]"
NOCOLOR="\[\033[0m\]"

export PS1="${GREEN}\w${NOCOLOR}\n${GREEN}\u@\h >${NOCOLOR} "

# Detect: OS Platform
case `uname -s` in
    "Linux")    MYOS="Linux";;
    "SunOS")   MYOS="Solaris";;
    "Darwin")   MYOS="OSX";;
    "FreeBSD")  MYOS="FreeBSD";;
    "CYGWIN_NT-5.1")    MYOS="Cygwin";;
    *)  MYOS="Unknown";;
esac

if [ "$MYOS" == 'OSX' ]; then
    export PERL5LIB=~/drw/5.12/lib/perl5
    export FIG_HOME=/data/fighome
    export FIG_REMOTE_URL=ftp://devnas/Builds/Fig/repos
    export MVIM_PATH=/Applications/MacVim.app/Contents/MacOS
    export JRUBY_PATH=/usr/local/jruby/bin
    export OS_PATH=/opt/local/bin:$JRUBY_PATH:$RVM_PATH:$MVIM_PATH
fi

if [ "$MYOS" == 'Linux' ]; then
   export PERL5LIB=/home/buildadmin/perl/lib/perl5
   
   export SVN_HOME=/site/apps/subversion/bin
   export GEM_PATH=/var/lib/gems/1.8/bin
   export OS_PATH=$SVN_HOME:$GEM_PATH:$RVM_PATH
fi

export RVM_PATH=~/.rvm/bin
export PATH=$OS_PATH:$RVM_PATH:$PATH

export HISTCONTROL=erasedups
export FIGNORE=.svn
export EDITOR=vim
export FIG_HOME=~/.fighome
export FIG_REMOTE_URL=ftp://devnas/Builds/Fig/repos
export TMP=~/tmp/swp #swap file location for vim

# Source in .bashrc
if [ -f /tmp/akomblevi/.bashrc ] && [ "$MYOS" == 'Linux' ] && [ `whoami` != "akomblevitz" ]; then
    . /tmp/akomblevi/.bashrc
else
    . ~/.bashrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
rvm ruby-1.9.2-p180@des
