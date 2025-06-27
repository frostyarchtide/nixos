{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./hardware/nixos-laptop.nix
    ./audio.nix
    ./bluetooth.nix
    ./boot.nix
    ./flakes.nix
    ./gc.nix
    ./greetd.nix
    ./networking.nix
    ./users.nix
    ./version.nix
  ];

  networking.hostName = "nixos-laptop";

  services.greetd.settings.default_session.command = lib.mkForce "${pkgs.greetd.tuigreet}/bin/tuigreet --time --remember --remember-session --cmd Hyprland";

  environment = {
    systemPackages = with pkgs; [
      bluetui
      neovim
      fastfetch
      git
    ];
  };
}
