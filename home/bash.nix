{ config, ... }:

{
  programs.bash = {
    enable = true;
    bashrcExtra = ''
      alias rebuild='nixos-rebuild switch --use-remote-sudo --flake ~/nixos#'
    '';
  };

  programs.starship = {
    enable = true;
    enableBashIntegration = true;
  };
}
