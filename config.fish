if command -q eza
    alias ls="eza -g --group-directories-first"
end

alias python "python3"

# Remove fish greeting
set -U fish_greeting ""

bind -M insert \cc kill-whole-line repaint

## Extending Path
fish_add_path $HOME/.cargo/bin

switch (uname)
  case Linux
  case Darwin
        fish_add_path /opt/homebrew/bin
        fish_add_path /opt/homebrew/sbin
end
