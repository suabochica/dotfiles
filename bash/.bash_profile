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
# 4.0 Environment variables
#-------------------------------------------------------------------------------

export USER_LOCAL="/usr/local/bin"
PATH="$USER_LOCAL:$PATH"

export USER_LOCAL_HIDE="$HOME/.local/bin"
PATH="$USER_LOCAL_HIDE:$PATH"

export BINARIES="/usr/bin:/bin:/usr/sbin:/sbin"
PATH="$BINARIES:$PATH"

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

# PATH=$PATH:$ANDROID_HOME
# PATH=$PATH:$NODE
# PATH=$PATH:$NPM
# PATH=$PATH:$PYTHON
# PATH=$PATH:$M2
# PATH=$PATH:$SCALA

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="$HOME/.sdkman"
#[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# 4.1 nvm
#--------

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# 4.2 node and npm
#--------
export NODE="$HOME/.nvm/versions/node/v25.9.0/bin/node"
PATH="$NODE:$PATH"

export NPM="$HOME/.nvm/versions/node/v25.9.0/bin/npm"
PATH="$NPM:$PATH"

# 4.3 pnpm
#--------

export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac

case ":$PATH:" in
*":$PNPM_HOME/bin:"*) ;;
*) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac

# 4.4 deno
#--------

export DENO="$HOME/.deno/env"
PATH="$DENO:$PATH"

# 4.5 bun
#--------
export BUN_INSTALL="$HOME/.bun"
PATH="$BUN_INSTALL/bin:$PATH"

# 4.6 pyenv
#--------

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

# 4.7 console-ninja
#--------

export CONSOLE_NINJA="$HOME/.console-ninja/.bin"
PATH="$CONSOLE_NINJA:$PATH"

# 4.8 doom emacs
#--------

export EMACS="$HOME/.emacs.d/bin"
PATH="$EMACS:$PATH"

# 4.9 Neovim
#---------

export NVIM="/opt/nvim/"
PATH="$NVIM:$PATH"

# 4.10 opencode
#---------
export OPENCODE="$HOME/.opencode/bin/"
PATH="$OPENCODE:$PATH"
