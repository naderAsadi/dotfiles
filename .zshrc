# Path to your oh-my-zsh installation.
export ZSH="/home/nader/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="nader"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	archlinux
	git
	docker
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=246'

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


######################
# Exports
######################
# CUDA                                                                                                            
export LD_LIBRARY_PATH=/usr/local/cuda/lib64
export PATH=$PATH:/usr/local/cuda/bin

# GEM
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

######################
# Alias
######################
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias anaconda='source  /home/nader/.conda.zshrc'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
