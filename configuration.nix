###########################
### NIXOS CONFIGURATION ###
###########################

{ config, lib, pkgs, ... }:

{
  ###########
  ### NIX ###
  ###########

  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [ "nix-command" "flakes" ];
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 30d";
    };
  };
  
  ##############
  ### SYSTEM ###
  ##############

  boot.loader = {
    efi.canTouchEfiVariables = true;
    systemd-boot = {
      enable = true;
      configurationLimit = 5;
    };
  };
  
  networking = {
    hostName = "nixos-laptop";
    networkmanager.enable = true;
  };

  time.timeZone = "America/Detroit";

  system = {
    autoUpgrade = {
      enable = true;
      channel = "https://nixos.org/channels/nixos-unstable";
    };
  };

  hardware.bluetooth.enable = true;

  #############
  ### FONTS ###
  #############

  fonts.packages = with pkgs; [
    nerd-fonts.hack
  ];

  ################
  ### SERVICES ###
  ################

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --remember --remember-session --cmd Hyprland";
	user = "greeter";
      };
    };
  };

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  services.blueman.enable = true;

  #############
  ### USERS ###
  #############

  users.users.frosty = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  ################
  ### PROGRAMS ###
  ################

  ###################
  ### ENVIRONMENT ###
  ###################

  environment = {
    systemPackages = with pkgs; [
      neovim
      wget
      waybar
      fuzzel
      librewolf
      fastfetch
      git
      vencord
      pavucontrol
    ];

    variables = {
      EDITOR = "nvim";
    };
  };

  ####################
  ### DO NOT TOUCH ###
  ####################

  system.stateVersion = "24.11"; # Seriously. Don't touch it.

}

