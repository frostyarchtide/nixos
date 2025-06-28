{ config, ... }:

{
  imports = [
    ./bash.nix
    ./fonts.nix
    ./fuzzel.nix
    ./home-manager.nix
    ./hyprland.nix
    ./hyprlock.nix
    ./kitty.nix
    ./librewolf.nix
    ./neovim.nix
    ./user.nix
  ];
}
