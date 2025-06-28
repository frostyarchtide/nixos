{ config, inputs, ... }:

{
  imports = [
    inputs.nixvim.homeModules.nixvim
  ];

  programs.nixvim = {
    enable = true;
    colorschemes.everforest.enable = true;
    plugins.bufferline.enable = true;
    plugins.lualine.enable = true;
    plugins.web-devicons.enable = true;
  };
}
