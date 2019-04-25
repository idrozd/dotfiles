SAVEHIST=100000
source ~/zshuery/zshuery.sh
load_defaults
load_aliases
load_lol_aliases
load_completion ~/zshuery/completion
# load_correction

prompts '%{$fg_bold[green]%}$(COLLAPSED_DIR)%{$reset_color%}$(virtualenv_info) %{$fg[yellow]%}$(prompt_char)%{$reset_color%} ' '%{$fg[red]%}$(ruby_version)%{$reset_color%}'

if is_mac; then
    export EDITOR='mvim'
else
    export EDITOR='vim'
fi

fpath=( "$HOME/.zfunctions" $fpath )
autoload -U promptinit && promptinit
prompt pure

# Example aliases
alias zshconfig="amp ~/.zshrc"

# Uncomment following line if you want to disable command autocorrection
 DISABLE_CORRECTION="true"

# Customize to your needs...
#export PATH=$PATH:/opt/vagrant/bin:/usr/local/heroku/bin:/home/atitov/.rvm/gems/ruby-1.9.3-p429/bin:/home/atitov/.rvm/gems/ruby-1.9.3-p429@global/bin:/home/atitov/.rvm/rubies/ruby-1.9.3-p429/bin:/home/atitov/.rvm/bin:/opt/vagrant/bin:/home/atitov/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/atitov/workspace/GlobalATI/script

eval "$(fasd --init auto)"

#PATH=$PATH:~/workspace/GlobalATI/script

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/opt/vagrant/bin:$PATH"

stty -ixon

#alias tmux="tmux -2"

export TERM=screen-256color-bce

export DISABLE_AUTO_TITLE=true
#source `gem contents tmuxinator | grep zsh`
#export PATH=/home/atitov/workspace/eua-wipeout/bin:$PATH
#export PATH=$PATH:/home/atitov/workspace/eua-wipeout/bin
export BROWSER=google-chrome

export KEYTIMEOUT=1
# bindkey -v

# vim_ins_mode="%{$fg_bold[blue]%}[INS]%{$reset_color%}"
# vim_cmd_mode="%{$fg_bold[green]%}[CMD]%{$reset_color%}"
# vim_mode=$vim_ins_mode

# function zle-keymap-select {
#   vim_mode="${${KEYMAP/vicmd/${vim_cmd_mode}}/(main|viins)/${vim_ins_mode}}"
#   zle reset-prompt
# }
# zle -N zle-keymap-select

# function zle-line-finish {
#   vim_mode=$vim_ins_mode
# }
# zle -N zle-line-finish
# RPROMPT='${vim_mode}'

export PATH=/usr/local/bin:$PATH
export PATH=$HOME/bin:$PATH

alias emacs='emacs -nw'
alias src='spring rails c'
alias gf-='git fetch --all'
alias t-='tig --all'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

cd ..; cd -

ssh-add ~/.ssh/align-2018-apr

LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
