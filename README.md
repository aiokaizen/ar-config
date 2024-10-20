# ARConfig

This repository contains some of the most important configurations for my environment, it can be used to start up a new installation.

## How to use

Install the configuration by running:
```bash
source ./update_config.sh
```

### Preparation
- Make sure your terminal uses RobotoMono nerd font by default. You can change it through the GUI.
- You can run `p10k configure` anytime to change the default configuration of your powerlevel10k theme.

### Tmux

After the installation is complete, run tmux for the first time with:
```bash
tmux new -s <SessionName>
```

Within tmux press the following keys to install all the plugins `<Ctrl+a> I` and
`<Ctrl+a> r` to load the configuration files.


### NVim
