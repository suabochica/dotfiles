#-------------------------------------------------------------------------------
#  __                        __         
# /\ \                      /\ \        
# \ \ \____     __      ____\ \ \___    
#  \ \ '__`\  /'__`\   /',__\\ \  _ `\  
#   \ \ \L\ \/\ \L\.\_/\__, `\\ \ \ \ \ 
#    \ \_,__/\ \__/.\_\/\____/ \ \_\ \_\
#     \/___/  \/__/\/_/\/___/   \/_/\/_/
#
# Name:     .bashrc
# Version:  1.0
# Purpose:  Customized bash configuration
# Author:   Sergio L. Benítez D., http://suabochica.com
#
# Put the commands that should run every time you launch a new shell in the 
# .bashrc file. This include your aliases and functions, custom prompts,
# history customizations , and so on.
#
#  Sections:
#  1.0  Aliases to improve terminal
#  2.0  File and folder management
#  3.0  Starship
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# 1.0 Aliases to improve terminal
#-------------------------------------------------------------------------------

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#-------------------------------------------------------------------------------
# 2.0 File and folder management
#-------------------------------------------------------------------------------

zipf () { zip -r "$1".zip "$1" ; }          # zipf:         To create a ZIP archive of a folder

# extract:  Extract most know archives with one command
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
      esac
    else
      echo "'$1' is not a valid file"
    fi
}

#-------------------------------------------------------------------------------
# 3.0 Starship
#-------------------------------------------------------------------------------

eval "$(starship init bash)"
