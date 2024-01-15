# if status is-interactive
#     starship init fish | source
# end

if command -q eza
    alias ls="eza -g --group-directories-first"
end

## Extending Path
fish_add_path $HOME/.cargo/bin

switch (uname)
  case Linux
  case Darwin
        fish_add_path /opt/homebrew/bin
        fish_add_path /opt/homebrew/sbin
end
