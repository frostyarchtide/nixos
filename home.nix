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

  ####################
  ### DO NOT TOUCH ###
  ####################

  home.stateVersion = "24.11";
}
