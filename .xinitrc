dwmblocks &
dunst &
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
xwallpaper --stretch ~/Pictures/Wallpapers/wallpaper1.jpeg
exec dwm 2> ~/.cache/dwm.log
