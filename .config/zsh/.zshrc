# Enable colors and change prompt:
autoload -U colors && colors

setopt autocd       # Automatically cd into typed directory.
stty stop undef      # Disable ctrl-s to freeze terminal.

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

#  Aliases and custom completions.
[ -d $HOME/.config/aliases ] && source $HOME/.config/aliases/aliases

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Add hidden files to fzf
export FZF_DEFAULT_COMMAND='rg --hidden --no-ignore -l --follow "!.git/*"'

# Add color for man pages
export LESS_TERMCAP_mb=$'\e[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\e[1;33m'     # begin blink
export LESS_TERMCAP_so=$'\e[01;44;37m' # begin reverse video
export LESS_TERMCAP_us=$'\e[01;37m'    # begin underline
export LESS_TERMCAP_me=$'\e[0m'        # reset bold/blink
export LESS_TERMCAP_se=$'\e[0m'        # reset reverse video
export LESS_TERMCAP_ue=$'\e[0m'        # reset underline
export GROFF_NO_SGR=1                  # for konsole and gnome-terminal

# Spaceship config
SPACESHIP_PROMPT_ORDER=(
#    time
    user
    host
    dir
    hg
    char
)

SPACESHIP_RPROMPT_ORDER=(
    git
    jobs
)

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_PROMPT_DEFAULT_SUFFIX=" "
SPACESHIP_CHAR_SYMBOL="$ "
SPACESHIP_CHAR_SYMBOL_ROOT="# "
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_COLOR="green"
SPACESHIP_TIME_PREFIX=""
SPACESHIP_TIME_SUFFIX=""
SPACESHIP_TIME_12HR=true
SPACESHIP_USER_SHOW=always
SPACESHIP_USER_PREFIX=""
SPACESHIP_USER_SUFFIX=""
SPACESHIP_USER_COLOR="14"
SPACESHIP_HOST_SHOW=always
SPACESHIP_HOST_PREFIX="@"
SPACESHIP_HOST_SUFFIX=""
SPACESHIP_HOST_COLOR="14"
SPACESHIP_DIR_SHOW=true
SPACESHIP_DIR_PREFIX=":"
SPACESHIP_DIR_SUFFIX=""
SPACESHIP_DIR_TRUNC=3
SPACESHIP_DIR_TRUNC_PREFIX="-"
SPACESHIP_DIR_COLOR="13"
SPACESHIP_GIT_PREFIX=""
SPACESHIP_GIT_BRANCH_COLOR="12"
SPACESHIP_EXEC_TIME_SHOW=true
SPACESHIP_EXEC_TIME_PREFIX="("
SPACESHIP_EXEC_TIME_SUFFIX=") "
SPACESHIP_EXEC_TIME_COLOR="blue"
SPACESHIP_JOBS_SHOW=true
SPACESHIP_JOBS_PREFIX=""
SPACESHIP_JOBS_SUFFIX=""
SPACESHIP_JOBS_COLOR="yellow"
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELM_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_GOLANG_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_HASKELL_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_DOCKER_CONTEXT_SHOW=false
SPACESHIP_AWS_SHOW=false
SPACESHIP_VENV_SHOW=false
SPACESHIP_CONDA_SHOW=false
SPACESHIP_PYENV_SHOW=false
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_KUBECTL_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_BATTERY_SHOW=false
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_EXIT_CODE_SHOW=false

# Spaceship initialization
autoload -U promptinit; promptinit
prompt spaceship

# Load you-should-use
source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null

