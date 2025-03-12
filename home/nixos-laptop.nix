{ config, ... }:

{
  imports = [
    ./fonts.nix
    ./fuzzel.nix
    ./home-manager.nix
    ./hyprland.nix
    ./hyprlock.nix
    ./hyprpanel.nix
    ./kitty.nix
    ./librewolf.nix
    ./user.nix
  ];
}
