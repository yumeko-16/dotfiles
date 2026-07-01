autoload -Uz colors
colors

bindkey -v

HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} %~
%# "

zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

autoload -Uz compinit
compinit -C

zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

hash -d sushidoc=/Users/maenotomohiro/Work/SUSHIBOYS/20_site/10_news/
hash -d sushiboys=/Users/maenotomohiro/GitHub/sushiboys
hash -d sushiboys-12=/Users/maenotomohiro/GitHub/sushiboys-next12
hash -d maenokikaku=/Users/maenotomohiro/GitHub/maenokikaku

autoload -Uz vcs_info add-zsh-hook

zstyle ':vcs_info:*' formats '%F{green}(%b)%f'
zstyle ':vcs_info:*' actionformats '%F{red}(%b|%a)%f'

add-zsh-hook precmd vcs_info
RPROMPT='${vcs_info_msg_0_}'

setopt no_beep
setopt no_flow_control
setopt ignore_eof
setopt interactive_comments
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt extended_glob

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

setopt complete_in_word

zstyle ':completion:*:default' menu select=1
zstyle ':completion::complete:*' use-cache true
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

setopt list_packed

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load --verbose

eval "$(/Users/maenotomohiro/.local/bin/mise activate zsh)"
