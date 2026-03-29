#-------------------------------------------------------------------------------
#                        ___      ___             
#                      /'___\ __ /\_ \            
#  _____   _ __   ___ /\ \__//\_\\//\ \      __   
# /\ '__`\/\`'__\/ __`\ \ ,__\/\ \ \ \ \   /'__`\ 
# \ \ \L\ \ \ \//\ \L\ \ \ \_/\ \ \ \_\ \_/\  __/ 
#  \ \ ,__/\ \_\\ \____/\ \_\  \ \_\/\____\ \____\
#   \ \ \/  \/_/ \/___/  \/_/   \/_/\/____/\/____/
#    \ \_\                                        
#     \/_/                                        
#                                                                    
#
# Name:     .bash_profile
# Version:  1.0
# Purpose:  Customized bash configuration
# Author:   Sergio L. Benítez D., http://suabochica.com

# Use .bash_profile to run commands that should run only once, such as 
# customizing the $PATH environment variable .
#
#  Sections:
#  1.0  Color variables
#  2.0  Environment configuration
#-------------------------------------------------------------------------------

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
                                                                    
#-------------------------------------------------------------------------------
# 1.0 Color variables
#-------------------------------------------------------------------------------

RED="\[\033[0;31m\]"
REDBOLD="\[\033[1;31m\]"
GREEN="\[\033[0;32m\]"
GREENBOLD="\[\033[1;32m\]"
YELLOW="\[\033[0;33m\]"
YELLOWBOLD="\[\033[1;33m\]"
BLUE="\[\033[0;34m\]"
BLUEBOLD="\[\033[1;34m\]"
RESETCOLOR="\[\e[00m\]"

#-------------------------------------------------------------------------------
# 2.0 Environment variables
#-------------------------------------------------------------------------------

export USER_LOCAL=/usr/local/bin
export BINARIES=/usr/bin:/bin:/usr/sbin:/sbin

#JAVA_HOME=$(/usr/libexec/java_home)
#export JAVA_HOME
#JAVA=$JAVA_HOME/bin
#export JAVA

#M2_HOME=/Users/serbenit/Development/tools/apache-maven-3.3.9
#export M2_HOME
#M2=$M2_HOME/bin
#export M2

#SCALA_HOME=/Users/serbenit/Development/compilers/scala-2.12.1
#export SCALA_HOME
#SCALA=$SCALA_HOME/bin
#export SCALA

# export ANDROID_HOME=/Users/suabochica/Library/Android/sdk/
# export NODE=/Users/suabochica/.nvm/versions/node/v12.6.0/bin/node
# export NPM=/Users/suabochica/.nvm/versions/node/v12.6.0/bin/npm
# export PYTHON=/usr/bin/python

PATH=$PATH:$USER_LOCAL
PATH=$PATH:$BINARIES
# PATH=$PATH:$ANDROID_HOME
# PATH=$PATH:$NODE
# PATH=$PATH:$NPM
# PATH=$PATH:$PYTHON
#PATH=$PATH:$M2
#PATH=$PATH:$SCALA

export PATH

# Set default edit (NeoVim)
export EDITOR=/usr/bin/nvim

# Set default blocksize for ls, df, du
# ref: http://hints.macworld.com/comment.php?mode=view&cid=24491
export BLOCKSIZE=1k

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="$HOME/.sdkman"
#[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
