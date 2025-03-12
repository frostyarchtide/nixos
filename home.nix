##################################
### HOME MANAGER CONFIGURATION ###
##################################

{ config, pkgs, ... }:

{
  ############
  ### HOME ###
  ############

  home.username = "frosty";
  home.homeDirectory = "/home/frosty";

  ################
  ### PROGRAMS ###
  ################

  programs.home-manager.enable = true;
  programs.kitty.enable = true;

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mod" = "SUPER";
      decoration = {
        "rounding" = "10";
	shadow = {
	  "enabled" = "true";
	  "range" = "4";
	};
      };
      misc = {
        "force_default_wallpaper" = "0";
	"disable_hyprland_logo" = "true";
      };
      bind = [
        "$mod, Q, exec, kitty"
	"$mod, C, killactive"
	"$mod, M, exit"
        "$mod, D, exec, fuzzel"
      ];
    };
  };

  ####################
  ### DO NOT TOUCH ###
  ####################

  home.stateVersion = "24.11";
}
