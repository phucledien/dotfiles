#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Go
export GOPATH=$HOME/go
export GOBIN="$GOPATH/bin"
export GO111MODULE=on

# Rust
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

# PATH
export PATH=$HOME/bin:/usr/local/bin:$GOPATH/bin:$HOME/.cargo/bin:$HOME/nvim-osx64/bin:$PATH

export EDITOR="nvim"                  # $EDITOR opens in terminal

export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'

export TERM=xterm-256color
export NVIM_TUI_ENABLE_TRUE_COLOR=1

fpath=(~/zsh $fpath)
autoload -Uz kp fp bip bup bcp ll

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -Uz compinit
compinit

# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

alias vim=nvim
