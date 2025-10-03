# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
alias ls='eza -1 --color=always --icons=always --hyperlink --group-directories-first'
alias cat='bat'
alias rm='rm -i'

set -U fish_user_paths "$HOME/.local/bin"
