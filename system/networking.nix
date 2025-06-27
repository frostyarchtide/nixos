{ config, ... }:

{
  networking = {
    networkmanager = {
      enable = true;
      dns = "none";
    };
    useDHCP = false;
    dhcpcd.enable = false;
    nameservers = [ "1.1.1.1" ];
  };
  time.timeZone = "America/Detroit";
}
