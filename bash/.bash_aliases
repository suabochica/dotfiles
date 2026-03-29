#-------------------------------------------------------------------------------
#         ___                                          
#        /\_ \    __                                   
#    __  \//\ \  /\_\     __      ____     __    ____  
#  /'__`\  \ \ \ \/\ \  /'__`\   /',__\  /'__`\ /',__\ 
# /\ \L\.\_ \_\ \_\ \ \/\ \L\.\_/\__, `\/\  __//\__, `\
# \ \__/.\_\/\____\\ \_\ \__/.\_\/\____/\ \____\/\____/
#  \/__/\/_/\/____/ \/_/\/__/\/_/\/___/  \/____/\/___/ 
#                                                     
# Name:     .bash_aliases
# Version:  1.0
# Purpose:  Customized bash aliases
# Author:   Sergio L. Benítez D., http://suabochica.com
#
# Put the commands that should run every time you launch a new shell in the 
# .bashrc file. This include your aliases and functions, custom prompts,
# history customizations , and so on.
#
#  Sections:
#  1.0  Navigation and list
#  2.0  Folder actions
#  3.0  Utils
#  4.0  Searching
#  5.0  Process management
#  6.0  Networking
#  7.0  System operations and information
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# 1.0 Navigation and list
#-------------------------------------------------------------------------------

alias ls='ls -Gp'                           # Preferred ‘ls’ implementation
alias ll='ls -lah'                          # Preferred ‘ls’ implementation for list all files
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation

alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias ~='cd ~'                              # ~: Go Home

# (Mac only) alias f='open -a Finder ./'                 # f: Opens current directory in MacOS Finder

#-------------------------------------------------------------------------------
# 2.0 Folder actions
#-------------------------------------------------------------------------------

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias rm='rm -iv'                           # Preferred 'rm' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation

#-------------------------------------------------------------------------------
# 3.0 Utils
#-------------------------------------------------------------------------------

alias c='clear'                             # c: Clear terminal display
alias cal='gcal --starting-day=1'           # print simple calendar for current month
alias weather='curl v2.wttr.in'             # print weather for current location (https://github.com/chubin/wttr.in)

alias less='less -R'
alias g='git'

alias srcbash='source ~/.bash_profile'           # reload ZSH
alias off='sudo shutdown -h now'            # off: Shutdow the OS


# Windows
# alias mnt='sudo mount -t drvfs C: /mnt/c -o metadata';
# alias umnt='sudo umount /mnt/c';

# Tmux
# alias tns='tmux new -s'
# alias tat='tmux attacht -t'
# alias tls='tmux ls'

alias eme='
    export DISPLAY=:0.0
    export LIBGL_ALWAYS_INDIRECT=1
    setsid emacs
    exit
    '

#-------------------------------------------------------------------------------
# 4.0 Searching
#-------------------------------------------------------------------------------

alias qfind="find . -name "                 # qfind:    Quickly search for file
ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string

#-------------------------------------------------------------------------------
# 5.0 Process management
#-------------------------------------------------------------------------------

# mem_hogs: Find memory hogs
alias mem_hogs='top -l 1 -o rsize | head -20'

# cpu_hogs: Find cpu hogs
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'

# ttop:  Recommended 'top' invocation to minimize resources
# ref: http://www.macosxhints.com/article.php?story=20060816123853639
alias ttop="top -R -F -s 10 -o rsize"

# my_ps: List processes owned by my user
my_ps() { ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ; }

#-------------------------------------------------------------------------------
# 6.0 Networking
#-------------------------------------------------------------------------------

alias my_ip='curl ip.appspot.com'                    # myip:         Public facing IP Address
alias net_cons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flush_dns='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache

#-------------------------------------------------------------------------------
# 7.0 System operations and information
#-------------------------------------------------------------------------------

# cleanup_DS:  Recursively delete .DS_Store files
alias cleanup_DS="find . -type f -name '*.DS_Store' -ls -delete"

# finder_show_hidden:   Show hidden files in Finder
# finder_hide_hidden:   Hide hidden files in Finder
alias finder_show_hidden='defaults write com.apple.finder ShowAllFiles TRUE'
alias finder_hide_hidden='defaults write com.apple.finder ShowAllFiles FALSE'

# cleanup_ls:  Clean up LaunchServices to remove duplicates in the "Open With" menu
# (Mac only) alias cleanup_ls="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# showa: To remind the established alias
showa () { /usr/bin/grep --color=always -i -a1 $@ ~/.bash_aliases | grep -v '^\s*$' | less -FSRXc ; }