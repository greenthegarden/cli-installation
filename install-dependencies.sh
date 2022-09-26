#!/usr/bin/env bash

sudo apt update && sudo apt upgrade

# install dependencise
sudo apt install -y git wget tree

# install rust
sudo apt install -y pkg-config libssl-dev
sudo apt install -y curl build-essential gcc make
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env && rustup default nightly && rustup update

source ~/.profile

# install nushell
cargo install nu --all-features

# install Starship
curl --proto '=https' --tlsv1.2 -sS https://starship.rs/install.sh | sh

# install zellij
cargo install --locked zellij

# install python tools and pip
PYTHON_VERSION=3.10
sudo apt install -y python3-pip python${PYTHON_VERSION}-venv

# install base python modules
python3 -m pip install -r requirements.txt --user --upgrade
python3 -m pipx ensurepath

PIPX_BIN=/home/philip/.local/bin/pipx
export PATH=${PIPX_BIN}:${PATH}

# now use pipx to install the rest
pipx install molecule[docker,lint] # Testing
pipx install pre-commit
pipx install yamllint # YAML lint tool
pipx install ansible-lint # Ansible lint tool
pipx install pycodestyle
pipx install autopep8
pipx install black  # uncompromising Python code formatter
pipx install flake8  # tool for style guide enforcement
# pipx install gdbgui  # browser-based gdb debugger
# pipx install poetry  # python dependency/environment/packaging management
pipx install pylint  # source code analyzer
# pipx install pyxtermjs  # fully functional terminal in the browser
# pipx install cookiecutter  # creates projects from project templates
# pipx/ install diagrams # draw the cloud system architecture in Python code

pipx upgrade-all

# install git hook scripts
# pre-commit install
