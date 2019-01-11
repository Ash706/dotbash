# Path
export PATH="$PATH:/usr/local/bin/"
export PATH="$PATH:/usr/local/opt/libxml2/bin"

# Locale
export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8

# Default editor
export EDITOR=vim

# Colours for GNU-ls
LS_COLORS='ow=01;90' # Other-writable directory (bold black)
LS_COLORS=$LS_COLORS':di=00;34' # Directories (blue)
LS_COLORS=$LS_COLORS':ln=00;36' # Symbolic links (teal)
LS_COLORS=$LS_COLORS':ex=00;33' # Executable (orange) 
LS_COLORS=$LS_COLORS':mi=01;31' # Missing symlink (bold red)
export LS_COLORS

# Aliases --------------------------------------------------------------------

# Python versions
alias python2='/usr/bin/python'
alias python='python3'
alias py='python3'
alias pip='pip3'

# Long-format, coloured GNU-ls that ignore OSX specific home directory folders
LL='gls -l --literal --color=auto'
LL=$LL' --hide=Desktop'
LL=$LL' --hide=Documents'
LL=$LL' --hide=Downloads'
LL=$LL' --hide=Dropbox'
LL=$LL' --hide=Library'
LL=$LL' --hide=Movies'
LL=$LL' --hide=Music'
LL=$LL' --hide=Pictures'
LL=$LL' --hide=Public'
alias ll=$LL

# Move upwards multiple directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# Auto-clour `grep` output
alias grep='grep --color=auto'

# Git aliases
alias gst='git status -s'
alias ga='git add'
alias gd='git diff'
alias gcm='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gl='git log'
alias glo='git log --oneline'
alias gun='git reset HEAD --'
alias gp='git push'

# iTerm2 profile-switching for Solarized light/dark colour schemes
alias light='echo -e "\033]50;SetProfile=light\a"'
alias dark='echo -e "\033]50;SetProfile=dark\a"'

# Prompt ---------------------------------------------------------------------

# Function to get branch if inside a git repository
git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Build prompt
export PS1='[\[\e[1;36m\]\h: ' # Hostname (bold grey)
export PS1=$PS1'\[\e[0;34m\]\w\[\e[m\]]' # Current directory (blue)
export PS1=$PS1'\[\e[0;36m\]$(git_branch)' # Git branch (teal)
export PS1=$PS1'\[\e[m\]$ ' # End
