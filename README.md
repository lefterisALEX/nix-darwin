# Nix Darwin

Based on https://github.com/ryan4yin/nix-darwin-kickstarter

## How to Start

1. Install Nix package manager via [Nix Official](https://nixos.org/download.html#nix-install-macos).
2. Read all the files in this `minimal` folder, and understand what they do.
   1. If you have trouble understanding, [ryan4yin/nixos-and-flakes-book](https://github.com/ryan4yin/nixos-and-flakes-book) is a good resource to learn nix and flakes.
3. Install Homebrew, see <https://brew.sh/>
   1. Homebrew is required to install most of the GUI apps, App Store's apps, and some CLI apps that are not available in nix's package repository `nixpkgs`.
4. Run the following command in the root of your nix configuration to start your nix-darwin journey(please change `hostname` to your hostname):

   ```bash
   nix build .#darwinConfigurations.hostname.system \
   	--extra-experimental-features 'nix-command flakes'

   ./result/sw/bin/darwin-rebuild switch --flake .#hostname
   ```

To simplify the command, adding the following content by create a `Makefile` in the root of your nix configuration:
