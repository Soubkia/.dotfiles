export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/mysql/bin:/usr/texbin

# bash prompt
PS1="\u@\h:\w $ "

# for python virtual environment
if [ -r /usr/bin/virtualenvwrapper.sh ]; then
    source /usr/bin/virtualenvwrapper.sh
fi
if [ -r /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi
export WORKON_HOME=$HOME/.virtualenvs

# common aliases
alias home='cd $HOME'
alias programming='cd $HOME/Programming'
alias g='egrep -i'
alias G='egrep'
alias ls='ls -la'

# mac vim
export MACVIM=/usr/local/Cellar/macvim/7.4-73_1/MacVim.app/Contents/Resources/vim
alias vim='mvim'