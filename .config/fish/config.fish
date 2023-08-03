set fish_greeting "𝓌𝑒𝓁𝒸𝑜𝓂𝑒 𝒟𝒶𝓂𝒾𝒶𝓃 𝒸𝑜𝒹𝑒𝓃𝒶𝓂𝑒 𝐹𝒩"

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
command -qv nvim && alias vim nvim

# If I have exa update the alias
if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH


set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end
