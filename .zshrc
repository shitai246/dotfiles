umask 022
ulimit -c 0

# History
export HISTFILE=~/.zsh_history
export HISTSIZE=5000
export SAVEHIST=50000
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY
export HISTORY_IGNORE='(ls|ll|pwd)'

# Prevent accidental shell exit with Ctrl-D
setopt IGNORE_EOF

export EDITOR=vim

export LANG='ja_JP.UTF-8'
export LC_ALL='ja_JP.UTF-8'
export LC_MESSAGES='ja_JP.UTF-8'

# Colors
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.sh=01;32:*.csh=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tz=01;31:*.rpm=01;31:*.cpio=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm=01;35:*.xpm=01;35:*.png=01;35:*.tif=01;35:'
alias ll='ls -lG'
alias la='ls -alG'
export GREP_COLOR='1;37;41'
alias grep='grep --color'

alias cp='cp -iv'
alias rm='rm -iv'
alias mv='mv -iv'
alias vi='vim'

# Prompt: [user@host ~/path]$
PROMPT='[%F{yellow}%n@%m %~%f]%(#.#.$) '

export MANPATH=/opt/local/share/man:/opt/local/man:$MANPATH

PATH=$PATH:/usr/local/bin:/usr/local/sbin:$HOME/bin
export PATH
unset USERNAME
