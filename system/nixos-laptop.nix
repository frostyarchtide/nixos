{ config, lib, pkgs, ... }:

{
  imports = [
    ./hardware/nixos-laptop.nix
    ./audio.nix
    ./bluetooth.nix
    ./boot.nix
    ./default.nix
    ./flakes.nix
    ./gc.nix
    ./greetd.nix
    ./networking.nix
    ./users.nix
  ];

  services.greetd.settings.default_session.command = lib.mkForce "${pkgs.greetd.tuigreet}/bin/tuigreet --time --remember --remember-session --cmd Hyprland";

  environment = {
    systemPackages = with pkgs; [
      neovim
      fuzzel
      librewolf
      fastfetch
      git
    ];
  };
}
