{ config, ... }:

{
  imports = [
    ./bash.nix
    ./direnv.nix
    ./fonts.nix
    ./fuzzel.nix
    ./home-manager.nix
    ./hyprland.nix
    ./hyprlock.nix
    ./kitty.nix
    ./librewolf.nix
    ./nixvim.nix
    ./ssh.nix
    ./user.nix
  ];
}
