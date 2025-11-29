#overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
#
set -g fish_greeting
export EDITOR="nvim"

alias cat='bat'
alias ff='fastfetch'
alias zxc='sudo pacman'
alias rm='rm -i'
alias brightness='ddcutil setvcp 10 --bus 13'


function yt-playlist
	yt-dlp --cookies ~/cookies.txt --config-location ~/.config/yt-dlp/playlist-config.cfg $argv
end

function yt-media
	yt-dlp --cookies ~/cookies.txt --config-location ~/.config/yt-dlp/solo-config.cfg $argv
end

set -U fish_user_paths "$HOME/.local/bin"

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /home/falguren/.lmstudio/bin
# End of LM Studio CLI section
#
fish_add_path ~/.local/bin

cd ~

