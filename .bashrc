[[ $- != *i* ]] && return

export PS1="\u \[\033[36m\]\W\[\033[32m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')\[\033[00m\]$ "
export N_PREFIX="$HOME/n"
export WORKON_HOME="$HOME/.virtualenvs"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$N_PREFIX/bin:$PATH"

[[ -s "$HOME/.bash_aliases" ]] && . "$HOME/.bash_aliases"
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion

eval $(thefuck --alias)

if which direnv > /dev/null; then eval "$(direnv hook bash)"; fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which pyenv > /dev/null; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
    pyenv virtualenvwrapper_lazy
fi