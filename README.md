# dotfiles
Find here hard links to my linux environment configuration files

# Tools stack

## Language multiple version management
- Node: [tj/n](https://github.com/tj/n)
- Ruby: [rbenv](https://github.com/rbenv/rbenv)
- Python: [pyenv](https://github.com/pyenv/pyenv)
- Java: [jenv](http://www.jenv.be/)

## Other tools
- Environment variables switcher: [direnv](https://direnv.net/)
- Run multiple processes through a procfile: [forego](https://github.com/ddollar/forego)
- Lazy previous console commands execution: [thefuck](https://github.com/nvbn/thefuck)

## Isolating python tools using pyenv
```
pyenv install 3.6.5
pyenv install 2.7.15

pyenv virtualenv 3.6.5 azure
pyenv activate azure
pip install azure-cli
pyenv deactivate

pyenv virtualenv 3.6.5 aws
pyenv activate aws
pip install awscli awscli s3cmd
pyenv deactivate

pyenv virtualenv 3.6.5 dev-tools
pyenv activate dev-tools
pip install thefuck
pyenv deactivate

pyenv global 3.6.5 dev-tools aws azure
pyenv rehash
```