# CLI Installation and Configuration

Based on [The modern CLI stack](https://danielgafni.medium.com/the-modern-linux-cli-stack-46253688b53d)

Installs:

* shell: nushell
* prompt: starship
* terminal multiplexer: zellij

## Install Rust

Based on [Install Rust](https://www.rust-lang.org/tools/install) and following *Install nu* information.

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env && rustup default nightly && rustup update
sudo apt install pkg-config libssl-dev
```

## Install Nushell

Based on [Install and Use Nushell Shell on Ubuntu / Debian](https://techviewleo.com/install-and-use-nushell-shell-on-ubuntu-debian/)

```bash
cargo install nu
cargo install nu --features=extra 
nu
```

Files:

* Environment: ~/.config/nushell/env.nu
* Configuration: ~/.config/nushell/config.nu

## Install Starship

Based on [Starship](https://starship.rs/guide/#%F0%9F%9A%80-installation)

```bash
curl --proto '=https' --tlsv1.2 -sS https://starship.rs/install.sh | sh
```

## Install Zellij

Based on [Zellij Intastllation](https://zellij.dev/documentation/installation.html)

```bash
cargo install --locked zellij
```

## Set nushell as shell

Use https://www.nushell.sh/book/configuration.html#configuring-nu-as-a-login-shell

```bash
chsh -s /home/philipcutler/.cargo/bin/nu
```
