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

sudo pacman -S git base-devel fuzzel waybar niri kitty firefox yazi swaync waypaper mpv telegram-desktop discord neovim fastfetch 7zip unzip unrar btop lact ntfs-3g stow noto-fonts noto-fonts-cjk noto-fonts-emoji swww mpvpaper ark grim slurp calf lsp-plugins easyeffects nwg-look bitwarden obsidian xwayland-satellite matugen blueman fish ffmpegthumbnailer gzip xdg-desktop-portal-gnome hyprpicker lutris rhythmbox qbittorrent gnome-calculator nautilus imagemagick kdenlive krita gparted onlyoffice-bin
stow .
cd ~
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd .. 
rm -rf paru
paru -S zen-browser-bin xnviewmp archarchive portproton ttf-times-new-roman zoom throne-git youtube-music-git vscodium labwc protonup-qt protontricks power-options-gtk-git

