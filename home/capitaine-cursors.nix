{ config, pkgs, ... }:

{
  home.pointerCursor = {
    enable = true;
    name = "capitaine-cursors";
    package = pkgs.capitaine-cursors;
    size = 32;
  };
}
