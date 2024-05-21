# Nintharray NixOS Configuration

This is my personal NixOS configuration. Feel free to browse, reference, or even use it! If you do, please be aware of the following caveats:
- Like almost all Nix configs, this is a work in progress, and I am still learning Nix. I can't guarantee everything is optimally organized or structured. (If you find a possible improvement, please let me know!)
- Although I hope that my configuration is portable, I can't guarantee that my configuration will work on your machine.

TLDR: The config is provided as-is.

## Installation

1. From a fresh NixOS installation with Git installed, clone the directory into a suitable location. I am partial to `~/.nixos`.
2. Install `home-manager`. I use the standalone installation, so the steps [here][https://nix-community.github.io/home-manager/index.xhtml#sec-install-standalone] are what I use. Remember to use the 23.11 channel, or switch the config to unstable if that's your thing.
3. In the cloned directory, run `sudo nixos-rebuild switch --flake .#$YOUR_FLAKE`, where `$YOUR_FLAKE` is one of the present configurations. 
4. Likewise, also run `home-manager switch --flake .#$YOUR_FLAKE`.

## Reporting an Issue

If you run into a problem, go ahead and open an issue here.

