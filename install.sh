echo -e "\033[0;36m---> Настройка репозитория Chaotic-AUR...\033[0m"

sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB

sudo pacman -U --noconfirm 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
sudo pacman -U --noconfirm 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

if ! grep -q "\[chaotic-aur\]" /etc/pacman.conf; then
    echo -e "\033[0;33m---> Добавление Chaotic-AUR в /etc/pacman.conf\033[0m"
    echo -e "\n[chaotic-aur]\nInclude = /etc/pacman.d/chaotic-mirrorlist" | sudo tee -a /etc/pacman.conf
else
    echo -e "\033[0;33m---> Chaotic-AUR уже добавлен в /etc/pacman.conf\033[0m"
fi

echo -e "\033[0;36m---> Обновление системы после добавления Chaotic-AUR...\033[0m"
sudo pacman -Syu --noconfirm

sudo pacman -S paru --noconfirm

sudo pacman -S --noconfirm --needed git base-devel 7zip alacritty ark ayugram-desktop bibata-cursor-theme bitwarden blueman btop calf cliphist duf discord easyeffects-git fastfetch ffmpegthumbnailer firefox fish flatpak fuzzel gamemode gamescope gdm goverlay gthumb gparted hyprpicker kitty krita lact lvm2 lsp-plugins libreoffice-fresh-ru lutris matugen-git mission-center mpv mpvpaper neovim network-manager-applet ntfs-3g niri noto-fonts noto-fonts-cjk noto-fonts-emoji nautilus nwg-look obs-studio obsidian okular onlyoffice-bin polkit-gnome protontricks protonup-qt qbittorrent qalculate-gtk qt5ct qt6ct rhythmbox snapper snapper-gui-git steam swaync swww unrar unzip vscodium warpinator waybar waypaper-git xorg-xhost xwayland-satellite xdg-desktop-portal-gnome yazi youtube-music zen-browser-bin imagemagick

paru -S portproton ttf-times-new-roman zoom throne power-options-gtk-git grub-customizer lmstudio onlinefix-linux-launcher-bin vicinae equicord-hook equicord-installer-bin
