#!/bin/zsh

export EDITOR="nvim"
export BROWSER="firefox"
export TERMINAL="termite"
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

export PATH="/bin"
export PATH="$PATH:/sbin"
export PATH="$PATH:/usr/bin"
export PATH="$PATH:/usr/sbin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/usr/bin/site_perl"
export PATH="$PATH:/usr/bin/vendor_perl"
export PATH="$PATH:/usr/bin/core_perl"
export PATH="$PATH:$HOME/.scripts"
export PATH="$PATH:$GOPATH/.local/share/go/bin"

export LS_COLORS="rs=0:di=01;94:ln=01;95:mh=00:pi=40;33:so=01;91:do=01;91:bd=40;33;01:cd=40;33;01:or=40;93;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;93:*.tgz=01;93:*.arc=01;93:*.arj=01;93:*.taz=01;93:*.lha=01;93:*.lz4=01;93:*.lzh=01;93:*.lzma=01;93:*.tlz=01;93:*.txz=01;93:*.tzo=01;93:*.t7z=01;93:*.zip=01;93:*.z=01;93:*.dz=01;93:*.gz=01;93:*.lrz=01;93:*.lz=01;93:*.lzo=01;93:*.xz=01;93:*.zst=01;93:*.tzst=01;93:*.bz2=01;93:*.bz=01;93:*.tbz=01;93:*.tbz2=01;93:*.tz=01;93:*.deb=01;93:*.rpm=01;93:*.jar=01;93:*.war=01;93:*.ear=01;93:*.sar=01;93:*.rar=01;93:*.alz=01;93:*.ace=01;93:*.zoo=01;93:*.cpio=01;93:*.7z=01;93:*.rz=01;93:*.cab=01;93:*.wim=01;93:*.swm=01;93:*.dwm=01;93:*.esd=01;93:*.jpg=01;91:*.jpeg=01;91:*.mjpg=01;91:*.mjpeg=01;91:*.gif=01;91:*.bmp=01;91:*.pbm=01;91:*.pgm=01;91:*.ppm=01;91:*.tga=01;91:*.xbm=01;91:*.xpm=01;91:*.tif=01;91:*.tiff=01;91:*.png=01;91:*.svg=01;91:*.svgz=01;91:*.mng=01;91:*.pcx=01;91:*.mov=01;91:*.mpg=01;91:*.mpeg=01;91:*.m2v=01;91:*.mkv=01;91:*.webm=01;91:*.webp=01;91:*.ogm=01;91:*.mp4=01;91:*.m4v=01;91:*.mp4v=01;91:*.vob=01;91:*.qt=01;91:*.nuv=01;91:*.wmv=01;91:*.asf=01;91:*.rm=01;91:*.rmvb=01;91:*.flc=01;91:*.avi=01;91:*.fli=01;91:*.flv=01;91:*.gl=01;91:*.dl=01;91:*.xcf=01;91:*.xwd=01;91:*.yuv=01;91:*.cgm=01;91:*.emf=01;91:*.ogv=01;91:*.ogx=01;91:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:"
