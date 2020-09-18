# Mio's dotfiles

## Install

1. Download dotfiles
    ```shell
    git clone git@github.com:m10maeda/dotfiles.git ~/.dotfiles
    ```
2. Deploy dotfiles
    ```shell
    ~/.dotfiles/bin/deploy.sh
    ```

## Initialize

1. Install [Homebrew](https://brew.sh/index_ja)
2. Install packages
    ```shell
    brew bundle --global
    ```
3. Initialize applications
    1. Initialize [anyenv](https://github.com/anyenv/anyenv)
        ```shell
        anyenv init
        ```
    2. Activate zsh installed by Homebrew
        1. Add the following to your /etc/shells:
            ```shell
            /usr/local/bin/zsh
            ```
        2. Additionally, you also need to run this:
            ```shell
            chsh -s /usr/local/bin/zsh
            ```
4. Reboot shell
    ```
    exec ${SHELL}
    ```
