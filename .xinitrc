dwmblocks &
dunst &
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Environment variables set everywhere
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="brave"

# XDG Paths
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# zsh config dir
export ZDOTDIR=$HOME/.config/zsh

xwallpaper --stretch ~/Pictures/Wallpapers/wallpaper1.jpeg
exec dwm 2> ~/.dwm.log
