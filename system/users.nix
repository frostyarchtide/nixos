{ config, ... }:

{
  users.users.frosty = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };
}
