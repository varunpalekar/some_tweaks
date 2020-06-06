# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM="xterm-256color"
#export GDK_SCALE=2

export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
setopt HIST_IGNORE_ALL_DUPS

typeset -g ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE='20'
typeset -g POWERLEVEL9K_KUBECONTEXT_SHOW_ON_COMMAND='kubectl|helm|kubens|kubectx|oc|istioctl|kogito'

source ~/.zplug/init.zsh
zstyle :omz:plugins:keychain agents gpg,ssh
zstyle :omz:plugins:keychain options --quiet

zplug "zplug/zplug"

zplug "plugins/{perms,rand-quote,rsync,git,kubectl,gpg-agent,nvm,keychain,common-aliases,zsh-interactive-cd}", from:oh-my-zsh
zplug "lib/{directories,history,key-bindings}", from:oh-my-zsh

zplug "zsh-users/zsh-history-substring-search"
zplug "romkatv/powerlevel10k", as:theme, depth:1  # zsh theme
zplug "superbrothers/zsh-kubectl-prompt"
zplug "modules/history", from:prezto, defer:3
zplug "supercrabtree/k", from:github
zplug "zdharma/history-search-multi-word", from:github, defer:3  # AND-style searching
zplug "zdharma/fast-syntax-highlighting", from:github, defer:3
zplug "ahmetb/kubectx", as:command, use:kubectx
zplug "ahmetb/kubectx", as:command, use:kubens
zplug "zsh-users/zsh-autosuggestions"
zplug "zpm-zsh/ls", defer:3  # Beautiy ls
zplug "lukechilds/zsh-nvm"
zplug "Tarrasch/zsh-autoenv" # Run scripts on enter and leave of folder events

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

#Homebrew
export PATH="$PATH:/home/linuxbrew/.linuxbrew/bin"
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

zplug load --verbose

#bindkey  "^[[H"   beginning-of-line
#bindkey  "^[[F"   end-of-line
bindkey  "^[[A"   up-line-or-history
bindkey  "^[[B"   down-line-or-history

POWERLEVEL9K_CUSTOM_KUBE_CONTEXT="echo KUBE: \$ZSH_KUBECTL_PROMPT"


alias sudo='sudo '

autoload -U +X bashcompinit && bashcompinit

complete -o nospace -C /usr/local/bin/terraform terraform


# krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
# local
export PATH="$HOME/.local/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
