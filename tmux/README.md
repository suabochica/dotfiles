# tmux

tmux is a terminal multiplexer. It lets you switch easily between several programs in one terminal, detach them (they keep running in the background) and reattach them to a different terminal. You can installed on Ubuntu with:

```sh
sudo apt-get install tmux
```

Then, run the tmux command to start a session:

```
tmux
```

The defaul prefix for tmux `Ctrl + b`, but if you check the `.tmux.conf` file I update this bind to `Ctrl + Space` and define navigations based on Vim keys.

To load the tmux configuration you should run:

```
tmux source .tmux.conf
```

Or If you group your configurations under your XDG config home directory, please run:

```
tmux source ~/.config/tmux/tmux.conf
```

## [Tmux Plugin Manager (TPM)](https://github.com/tmux-plugins/tpm)

Tmux Plugin Manager (TPM) is the de facto tool for managing plugins that extend the functionality of the Tmux terminal multiplexer. It simplifies the process of installing, updating, and removing plugins by using key bindings within. To install run: 

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

or under the XDG config home directory you should run:

```
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

Then, reload tmux if it is already started with `prefix + r`

Finally, launch tmux and hit `I` (capital i) to fetch any plugins
