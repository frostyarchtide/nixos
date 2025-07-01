{ config, ... }:

{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        image-size-ratio = "1";
      };
      colors.background = "2f383eff";
      colors.text = "d3c6aaff";
      colors.selection = "d3c6aaff";
      colors.selection-text = "374247ff";
      colors.selection-match = "e67e80ff";
      colors.border = "a7c080ff";
    };
  };
}
