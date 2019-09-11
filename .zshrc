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

alias vim="~/nvim-osx64/bin/nvim"

export GOPATH=$HOME/go
export GOBIN="$GOPATH/bin"
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
export PATH=$HOME/bin:/usr/local/bin:$GOPATH/bin:$HOME/.cargo/bin:$PATH

export EDITOR="vim"                  # $EDITOR opens in terminal

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export TERM=xterm-256color

