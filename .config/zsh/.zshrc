# Enable colors and change prompt:
autoload -U colors && colors

stty stop undef # Disable ctrl-s to freeze terminal.

setopt autocd   # Automatically cd into typed directory.

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
setopt HIST_IGNORE_DUPS  # Ignores duplicated history entries

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
bindkey '^R' history-beginning-search-backward

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Add hidden files to fzf
export FZF_DEFAULT_COMMAND='rg --hidden --no-ignore -l ""'

# Setting up colors on less command
export LESS_TERMCAP_mb=$(tput bold; tput setaf 13) # begin bold
export LESS_TERMCAP_md=$(tput bold; tput setaf 12) # begin blink
export LESS_TERMCAP_us=$(tput bold; tput setaf 14) # begin underline
export LESS_TERMCAP_so=$(tput setaf 0; tput setab 11) # begin reverse video
export LESS_TERMCAP_se=$(tput sgr0)                # reset reverse video
export LESS_TERMCAP_me=$(tput sgr0)                # reset bold/blink
export LESS_TERMCAP_ue=$(tput sgr0)                # reset underline

# Adding autocomplete to cheat
fpath=(~/.config/zsh/ $fpath)

# Spaceship config
SPACESHIP_PROMPT_ORDER=( user host dir hg char )

SPACESHIP_RPROMPT_ORDER=( git jobs )

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_PROMPT_DEFAULT_SUFFIX=" "
SPACESHIP_CHAR_SYMBOL="$ "
SPACESHIP_CHAR_SYMBOL_ROOT="# "
SPACESHIP_CHAR_COLOR_SUCCESS="10"
SPACESHIP_CHAR_COLOR_FAILURE="9"
SPACESHIP_TIME_SHOW=true
#SPACESHIP_TIME_COLOR="green"
#SPACESHIP_TIME_PREFIX=""
#SPACESHIP_TIME_SUFFIX=""
#SPACESHIP_TIME_12HR=true
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
SPACESHIP_DIR_COLOR="11"
SPACESHIP_GIT_PREFIX=""
SPACESHIP_GIT_BRANCH_COLOR="13"
SPACESHIP_GIT_STATUS_COLOR="9"
#SPACESHIP_EXEC_TIME_SHOW=true
#SPACESHIP_EXEC_TIME_PREFIX="("
#SPACESHIP_EXEC_TIME_SUFFIX=") "
#SPACESHIP_EXEC_TIME_COLOR="blue"
SPACESHIP_JOBS_SHOW=true
SPACESHIP_JOBS_PREFIX=""
SPACESHIP_JOBS_SUFFIX=""
SPACESHIP_JOBS_COLOR="12"
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

export LS_COLORS="rs=0:di=01;94:ln=01;95:mh=00:pi=40;33:so=01;91:do=01;91:bd=40;33;01:cd=40;33;01:or=40;93;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;92:*.tar=01;93:*.tgz=01;93:*.arc=01;93:*.arj=01;93:*.taz=01;93:*.lha=01;93:*.lz4=01;93:*.lzh=01;93:*.lzma=01;93:*.tlz=01;93:*.txz=01;93:*.tzo=01;93:*.t7z=01;93:*.zip=01;93:*.z=01;93:*.dz=01;93:*.gz=01;93:*.lrz=01;93:*.lz=01;93:*.lzo=01;93:*.xz=01;93:*.zst=01;93:*.tzst=01;93:*.bz2=01;93:*.bz=01;93:*.tbz=01;93:*.tbz2=01;93:*.tz=01;93:*.deb=01;93:*.rpm=01;93:*.jar=01;93:*.war=01;93:*.ear=01;93:*.sar=01;93:*.rar=01;93:*.alz=01;93:*.ace=01;93:*.zoo=01;93:*.cpio=01;93:*.7z=01;93:*.rz=01;93:*.cab=01;93:*.wim=01;93:*.swm=01;93:*.dwm=01;93:*.esd=01;93:*.jpg=01;91:*.jpeg=01;91:*.mjpg=01;91:*.mjpeg=01;91:*.gif=01;91:*.bmp=01;91:*.pbm=01;91:*.pgm=01;91:*.ppm=01;91:*.tga=01;91:*.xbm=01;91:*.xpm=01;91:*.tif=01;91:*.tiff=01;91:*.png=01;91:*.svg=01;91:*.svgz=01;91:*.mng=01;91:*.pcx=01;91:*.mov=01;91:*.mpg=01;91:*.mpeg=01;91:*.m2v=01;91:*.mkv=01;91:*.webm=01;91:*.webp=01;91:*.ogm=01;91:*.mp4=01;91:*.m4v=01;91:*.mp4v=01;91:*.vob=01;91:*.qt=01;91:*.nuv=01;91:*.wmv=01;91:*.asf=01;91:*.rm=01;91:*.rmvb=01;91:*.flc=01;91:*.avi=01;91:*.fli=01;91:*.flv=01;91:*.gl=01;91:*.dl=01;91:*.xcf=01;91:*.xwd=01;91:*.yuv=01;91:*.cgm=01;91:*.emf=01;91:*.ogv=01;91:*.ogx=01;91:*.aac=00;96:*.au=00;96:*.flac=00;96:*.m4a=00;96:*.mid=00;96:*.midi=00;96:*.mka=00;96:*.mp3=00;96:*.mpc=00;96:*.ogg=00;96:*.ra=00;96:*.wav=00;96:*.oga=00;96:*.opus=00;96:*.spx=00;96:*.xspf=00;96:"

# Spaceship initialization
autoload -U promptinit; promptinit
prompt spaceship

# Load you-should-use
source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null

