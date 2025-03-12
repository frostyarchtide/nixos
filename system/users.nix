{ config, lib, pkgs, ... }:

{
  users.users.frosty = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };
}
