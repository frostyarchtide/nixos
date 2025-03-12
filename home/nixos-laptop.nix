{ config, ... }:

{
  imports = [
    ./fuzzel.nix
    ./home-manager.nix
    ./hyprland.nix
    ./kitty.nix
    ./user.nix
  ];
}
