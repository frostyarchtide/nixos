{ config, ... }:

{
  programs.kitty = {
    enable = true;
    font.name = "FiraCode Nerd Font Mono";
    themeFile = "everforest_dark_medium";
  };
}
