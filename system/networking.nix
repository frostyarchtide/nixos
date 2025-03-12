{ config, lib, pkgs, ... }:

{
  networking.networkmanager.enable = true;
  time.timeZone = "America/Detroit";
}
