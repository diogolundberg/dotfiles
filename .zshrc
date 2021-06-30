export ZSH="$HOME/.oh-my-zsh"
export WORKON_HOME="$HOME/.virtualenvs"
export N_PREFIX="/usr/local/Cellar/n/6.1.3/"

export ANDROID_HOME="$HOME/Library/Android/sdk"

export NODE_TLS_REJECT_UNAUTHORIZED="0"

export HOMEBREW_NO_AUTO_UPDATE="1"

export PATH="$N_PREFIX/bin:$PATH"
export PATH="$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"


if which pyenv > /dev/null; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
    pyenv virtualenvwrapper_lazy
fi

export PYENV_VIRTUALENV_DISABLE_PROMPT=1

ZSH_THEME="spaceship"
SPACESHIP_DOCKER_SHOW=false
plugins=(git jenv thefuck)

source $ZSH/oh-my-zsh.sh
eval "$(direnv hook $SHELL)"
export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
