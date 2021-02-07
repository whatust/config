#!/bin/zsh

export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'
export LANG=en_US.UTF-8

export EDITOR="nvim"
export BROWSER="firefox"
export TERMINAL="st"
export READER="zathura"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export ANSIBLE_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/ansible/ansible.cfg"
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/inputrc"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export _JAVA_AWT_WM_NONREPARENTING=1 # Fix android studio startup
export LESSHISTFILE="${XDG_CONFIG_HOME:-$HOME/.config}/lesshst" # Change less historynfile

export PATH="/bin"
export PATH="$PATH:/sbin"
export PATH="$PATH:/usr/bin"
export PATH="$PATH:/usr/sbin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:$HOME/.scripts"
export PATH="$PATH:$HOME/.scripts/i3"
export PATH="$PATH:$HOME/.scripts/dwm"
export PATH="$PATH:$HOME/.scripts/misc"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$HOME/.gem/ruby/2.7.0/bin"

