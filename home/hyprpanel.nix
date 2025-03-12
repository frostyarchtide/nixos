{ configs, lib, inputs, ... }:

{
  imports = [ inputs.hyprpanel.homeManagerModules.hyprpanel ];

  nixpkgs.overlays = lib.mkForce null; # Here because HyprPanel sucks and isn't implemented correctly, apparently.

  programs.hyprpanel = {
    enable = true;
    hyprland.enable = true;
  };
}
