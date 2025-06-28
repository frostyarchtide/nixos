{ config, ... }:

{
  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
  };
}
