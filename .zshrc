export PATH="/usr/bin:$PATH"

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# starship
eval "$(starship init zsh)"

# eza
alias ls='eza --icons=auto'
alias ll='eza --icons=auto --git -lh'
alias la='eza --icons=auto --git -lah'

# bat
alias cat="bat --plain --paging=never"
alias c="bat --paging=never"
# Enable mouse scrolling when using bat in tmux that enables mouse support
export BAT_PAGER='less -R -K --mouse'

# pi agent
alias pit='pi --no-session'
export PI_NOTIFY_SOUND_CMD='afplay /System/Library/Sounds/Glass.aiff'

# neovim
alias vi="nvim"

# zoxide
eval "$(zoxide init zsh)"

# mise
eval "$(mise activate zsh)"
