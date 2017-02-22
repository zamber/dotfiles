# dotfiles

## Optional SSH key magic

`~.ssh/config`

host github.com
    HostName github.com
    IdentityFile ~/.ssh/id_rsa_@
    User git

## Installation

    cd ~/
    git clone --recursive git@github.com:zamber/dotfiles.git
    ln -s dotfiles/.zshrc .
    ln -s dotfiles/.tmux.conf .


## Style

Font: Inconsolata 13pt systemwide mono (I'm getting blind)
Color schemes:
- Desktop: Numix Dark with red accents, Gnome SHELL with dark theme
- Sublime Edit: Afterglow-orange
- Terminal: Afterglow


## Tmux Cheatcheet

### Keybindings

- Ctrl+a - prefix
    + $ - rename tmux session
    + r - reload config
    + & - kill window
    + c - new window
    + p/n - previous/next window
    + x - kill pane
    + arrows - pane navigation
    + -/| - split panes vertically/horizontally
    + hold prefix + arrows - resize active pane


### Status line

    hostname $ session-name [windows] < - - - > [load] | date


## TODO:

Check out:
- https://github.com/anishathalye/dotbot
- https://github.com/firehol/netdata