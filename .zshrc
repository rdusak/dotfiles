# ~/.config/zsh/.zshrc

function man {
    MANPAGER='less -s -M +Gg' \
    GROFF_NO_SGR=1 \
    LESS_TERMCAP_md=$'\e[1;38;5;115m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[2;48;5;238;38;5;51m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[1;38;5;172m' \
        command man "$@"
}

# Aliases
alias ls='ls --group-directories-first --color=auto --time-style=long-iso -h'
alias grep='grep --color=auto'
alias egrep='egrep --colour=auto --line-number --initial-tab'
alias fgrep='fgrep --colour=auto--line-number --initial-tab'
alias rm='rm -Iv'
alias ytdl='~/opt/yt-dlp/yt-dlp.run --config-location ~/.config/youtube-dl'
alias yta='ytdl -x -f bestaudio/best'
alias mv='mv -iv'
alias cp='cp -iv'
alias mkdir='mkdir -pv'
#alias history='history 1' ## Maybe this isn't needed, enable for the entire history to be shown when called
alias lspkg='pacman -Q'
alias gcc='gcc -fdiagnostics-color=always'
# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
#export PS1="\[$(tput bold)\]\[\033[38;5;2m\][\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;75m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;2m\]]\[$(tput sgr0)\]\n\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;2m\]>\[$(tput sgr0)\] \[$(tput sgr0)\]"

PS1="%{$fg[green]%}[ %{$reset_color%}%B%{$fg[magenta]%}%~%b%{$reset_color%}%{$fg[green]%} ]%{$reset_color%}"$'\n'"%{$fg[green]%}>%{$reset_color%} "
setopt autocd		# Automatically cd into typed directory.

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY


# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Always put links in quotes
#autoload -Uz bracketed-paste-magic
#zle -N bracketed-paste bracketed-paste-magic

#autoload -Uz url-quote-magic
#zle -N self-insert url-quote-magic

# Keybindings
bindkey "^[[H"      beginning-of-line
bindkey "^[[F"      end-of-line
bindkey "^H"        backward-kill-word
bindkey "^[[3;5~"   kill-word
bindkey "^[[1;5D"   backward-word
bindkey "^[[1;5C"   forward-word
bindkey "^[[3~"     delete-char

# Load syntax highlighting; should be last.
source ~/opt/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null

