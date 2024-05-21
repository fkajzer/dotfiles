# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/antigen.zsh
path+=('/Library/Frameworks/Mono.framework/Versions/Current/bin')

# metal-shaderconverter etc
export PATH="/usr/local/bin:$PATH"

# homebrew
export PATH=$PATH:/opt/homebrew/bin

# vulkan
export VULKAN_SDK="$HOME/VulkanSDK/1.3.280.1/macOS"
export PATH=$VULKAN_SDK/bin:$PATH
export DYLD_LIBRARY_PATH=$VULKAN_SDK/lib:$DYLD_LIBRARY_PATH
export VK_ICD_FILENAMES=$VULKAN_SDK/share/vulkan/icd.d/MoltenVK_icd.json
export VK_LAYER_PATH=$VULKAN_SDK/share/vulkan/explicit_layer.d

# # cpp
# export CPLUS_INCLUDE_PATH="/opt/homebrew/Cellar/:$CPLUS_INCLUDE_PATH"
# export LIBRARY_PATH="/opt/homebrew/Cellar/:$LIBRARY_PATH"
# export PKG_CONFIG_PATH="/opt/homebrew/Cellar/:$PKG_CONFIG_PATH"
#
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle lein
antigen bundle command-not-found
#antigen bundle pip

# autocomplete
antigen bundle zsh-users/zsh-completions

# z directory switching
antigen bundle agkozak/zsh-z

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Inititalize asdf version manager
if [ -x "$(which asdf)" ]; then
  . $(brew --prefix asdf)/libexec/asdf.sh
fi

# alias
alias vim='nvim'
alias g='git'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# directory
alias ls="ls -p -G"
alias la="ls -A"
alias ll="exa -l -g --icons"
alias lla="exa -l -a -g --icons"

# neovide no frame
alias neovide="neovide --frame none"

# peco-everything script 'CTRL+f' for search, dependency peco + z
bindkey -s '^F' 'source ~/.config/scripts/peco-everything/peco-z.sh^M'
bindkey -s '^R' 'source ~/.config/scripts/peco-everything/peco-history.sh^M'
export PATH="$PATH:/sbin"

source <(pkgx --shellcode)  #docs.pkgx.sh/shellcode

