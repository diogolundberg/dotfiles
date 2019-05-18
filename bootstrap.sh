#!/bin/bash

export PS1="\u \[\033[36m\]\W\[\033[32m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')\[\033[00m\]$ "
export N_PREFIX="$HOME/n"
export DOTNET_ROOT="$HOME/dotnet"
export JAVA_HOME="/usr/lib/jvm/default"
export WORKON_HOME="$HOME/.virtualenvs"
export PYENV_ROOT="$HOME/.pyenv"

export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$N_PREFIX/bin:$PATH"
export PATH="$DOTNET_ROOT:$PATH"
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

sudo apt -y install curl
sudo apt -y install git
sudo apt -y install build-essential
sudo apt -y install build-essential libsqlite3-dev sqlite3 bzip2 libbz2-dev zlib1g-dev libssl-dev openssl libgdbm-dev libgdbm-compat-dev liblzma-dev libreadline-dev libncursesw5-dev libffi-dev uuid-dev
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
git clone https://github.com/pyenv/pyenv-virtualenvwrapper.git $HOME/.pyenv/plugins/pyenv-virtualenvwrapper

yes | cp -rf /data/.bashrc ~/.bashrc
yes | cp -rf /data/.bash_aliases ~/.bash_aliases 
. ~/.bashrc 
pyenv install 3.7.3
