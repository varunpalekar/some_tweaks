# Introduction
This repository contains setup file for a linux workstation also with some tweaks.

```
├── LICENSE
├── openfortivpn                                    -> folder contains custom scripts and configuration for openfortivpn
│   ├── config                                      -> Sample openfortivpn config
│   ├── custom_address                              -> Sample file contains domain which need to be add to vpn routes, used by "script_to_add_routes_from_domain.sh"
│   └── script_to_add_routes_from_domain.sh         -> Script to add custom routes from domain, as openfortivpn on linux uses pppd so put this file in folder "/etc/ppp/ip-up.d/"
├── README.md
├── rsync.md                                        -> rsync shortcuts
└── skel                                            -> Can use this directory at /etc/skel
    ├── .aws
    ├── .bash_logout
    ├── .bashrc
    ├── .gitignore_global                           -> global gitignore to ignore some autoload scripts
    ├── .kube
    ├── .p10k.zsh                                   -> powerlevel10k zsh theme
    ├── .profile
    ├── .tmux                                       -> Tmux configuration and plugins
    ├── .tmux.conf -> .tmux/.tmux.conf              -> Tmux main configuration
    ├── .tmux.conf.local                            -> Tmux local configuration file for simplicity
    ├── .tmuxp                                      -> Some tmuxp file for creating tmux sessiosn
    ├── .vim                                        -> VIM plugins and config files
    ├── .vimrc                                      -> VIM main config file
    ├── .zplug                                      -> ZSH plugin manager zlug folder
    └── .zshrc                                      -> Main zsh config file
```