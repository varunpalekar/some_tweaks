# Introduction
This repository contains setup file for a linux workstation also with some tweaks.

```
├── LICENSE
├── openfortivpn                                    -> folder contains custom scripts and configuration for openfortivpn
│   ├── config                                      -> Sample openfortivpn config
│   ├── custom_address                              -> Sample file contains domain which need to be add to vpn routes, used by "script_to_add_routes_from_domain.sh"
│   └── script_to_add_routes_from_domain.sh         -> Script to add custom routes from domain, as openfortivpn on linux uses pppd so put this file in folder "/etc/ppp/ip-up.d/"
├── README.md
└── rsync.md                                        -> rsync shortcuts
```