{ config, ... }:

{
  imports = [
    ./bash.nix
    ./capitaine-cursors.nix
    ./direnv.nix
    ./fonts.nix
    ./fuzzel.nix
    ./home-manager.nix
    ./hypridle.nix
    ./hyprland.nix
    ./hyprlock.nix
    ./kitty.nix
    ./librewolf.nix
    ./nixvim.nix
    ./spotify-player.nix
    ./ssh.nix
    ./user.nix
    ./waybar.nix
  ];
}
