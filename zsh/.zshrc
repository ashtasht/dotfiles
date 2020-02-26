# Created by amitg for 5.6.2

###############################
#            PATH             #
###############################

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=$JAVA_HOME/bin:$PATH
export PATH=/home/amitg/.bin:$PATH
XDG_CONFIG_HOME=~/.config

export ZDOTDIR="$HOME/.config/zsh"

###############################
#       CONFIGURATIONS        #
###############################

# Enable some key
bindkey "^[[3~" delete-char
bindkey '\e[7~' beginning-of-line
bindkey '\e[8~' end-of-line

# Advanced command completion
autoload -Uz compinit
compinit -d ~/.cache/zsh/compdump-$ZSH_VERSION
zstyle ':completion:*' menu select # enable complation TUI menu
zstyle ':completion::complete:*' gain-privileges 1 # enable sudo complations
setopt COMPLETE_ALIASES
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'

# Look
autoload -Uz promptinit 
fpath=( "$HOME/.zprompts" $fpath ) # load custom prompts
promptinit # start the feature
prompt func # set the prompt

# History
export HISTFILE="~/.cache/zsh/history"
export HISTSIZE=10000

# History search
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

######################################
#       COMMAND CONFIGURATIONS       #
######################################

# ls
alias ls="exa --colour never --classify"
# tree
alias tree="exa --tree --classify"

# mcd
function mcd {
   mkdir $1
   cd $1
}

# Graphical cd using lf
lfcd() {
  tmp="$(mktemp)"
  lf -last-dir-path="$tmp" "$@"
  if [ -f "$tmp" ]; then
    dir="$(cat "$tmp")"
    rm -rf  "$tmp"
    [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
  fi
}
bindkey -s '^o' 'lfcd\n'

# Edit line in vim
export VISUAL=vim
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

#####################################
#             PLUGINS               #
#####################################

# z.lua
eval "$(lua /home/amitg/sft/z.lua/z.lua --init zsh)"
