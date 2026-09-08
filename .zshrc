# History
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks

# Key bindings
bindkey -v

# Completion
autoload -Uz compinit
compinit -C

zstyle ':completion:*:default' menu select=1
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Prompt
autoload -Uz vcs_info add-zsh-hook

zstyle ':vcs_info:*' formats '%F{green}(%b)%f'
zstyle ':vcs_info:*' actionformats '%F{red}(%b|%a)%f'

add-zsh-hook precmd vcs_info

setopt prompt_subst

PROMPT='%F{green}[%n@%m]%f %~ ${vcs_info_msg_0_}
%# '

# Options
setopt no_beep
setopt no_flow_control
setopt ignore_eof
setopt interactive_comments
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt complete_in_word
setopt extended_glob

#Aliases
alias nv='nvim'

case ${OSTYPE} in
  darwin*)
    # Mac
    export CLICOLOR=1
    alias ls='ls -G -F'
    ;;
  linux*)
    # Linux
    alias ls='ls -F --color=auto'
    ;;
esac

# mise
eval "$(~/.local/bin/mise activate zsh)"
