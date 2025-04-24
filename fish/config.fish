# source /usr/share/cachyos-fish-config/cachyos-config.fish
#
# # overwrite greeting
# # potentially disabling fastfetch
# #function fish_greeting
# #    # smth smth
# #end
/home/kiralaine/Documents/fg.sh
alias fastfetch="fastfetch --cpu-temp --gpu-temp"
set -x LIBVA_DRIVER_NAME radeonsi   # для AMD
set -x VDPAU_DRIVER va_gl           # или для других
set -x LIBGL_ALWAYS_SOFTWARE 0
