{ config, ... }:

{
  programs.fuzzel = {
    enable = true;
    settings = { main = { image-size-ratio = "1"; }; };
  };
}
