{ config, ... }:

{
  imports = [
    ./fonts.nix
    ./fuzzel.nix
    ./home-manager.nix
    ./hyprland.nix
    ./hyprlock.nix
    ./kitty.nix
    ./user.nix
  ];
}
