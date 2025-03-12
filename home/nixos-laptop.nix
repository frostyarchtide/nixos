{ config, pkgs, ... }:

{
  imports = [
    ./home-manager.nix
    ./hyprland.nix
    ./kitty.nix
    ./user.nix
  ];
}
