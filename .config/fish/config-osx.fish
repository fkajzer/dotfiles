source ~/.iterm2_shell_integration.fish

source /opt/homebrew/opt/asdf/libexec/asdf.fish

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "exa -l -a -g --icons"
end

alias python "python3"
