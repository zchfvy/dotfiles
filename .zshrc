# Load antigen
source "$HOME/.antigen/antigen.zsh"
# Load the oh-my-zsh's library
antigen use oh-my-zsh
# Bundles from the default repo
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
# Syntax hilighting bundle
antigen bundle zsh-users/zsh-syntax-highlighting
# Apply!
antigen apply

# I find this theme really nice
antigen theme babun/babun babun-core/plugins/oh-my-zsh/src/babun
# I find this option not so nice
unsetopt autocd

# Setup Virtualenvwrapper
source /bin/virtualenvwrapper.sh
# Setup 'config' script alias
alias config='/usr/bin/git --git-dir=/home/Jason/.cfg/ --work-tree=/home/Jason'
