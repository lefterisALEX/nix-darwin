# Justfile

system-mac:
    nix build .#darwinConfigurations.lefteris-mac.system  --extra-experimental-features 'nix-command flakes' && ./result/sw/bin/darwin-rebuild switch --flake .#lefteris-mac

