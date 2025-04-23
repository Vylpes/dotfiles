# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.9
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Command Alias
alias lss="ls -lah"
alias yt-dlp-mp4="yt-dlp --no-config --format 'bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]'"
alias t="todo.sh"

alias gco="git checkout"
alias gcm="git commit -m"
alias gss="git status -s"
alias gaa="git add -A"
alias gf="git fetch --prune"
alias gd="git pull"
alias gu="git push"

alias ya="yadm add"
alias ycm="yadm commit -m"
alias yf="yadm fetch"
alias yd="yadm pull"
alias yu="yadm push"
alias yss="yadm status -s"

# Exports
export EDITOR="nvim"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.dotnet/tools:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"

