{ config, inputs, ... }:

{
  imports = [ inputs.nixvim.homeModules.nixvim ];

  programs.nixvim = {
    enable = true;
    opts = {
      number = true;
      relativenumber = true;
      expandtab = true;
      tabstop = 4;
      shiftwidth = 4;
      smartindent = true;
      ignorecase = true;
      smartcase = true;
      cursorline = true;
      termguicolors = true;
      scrolloff = 8;
      sidescrolloff = 8;
      wrap = false;
    };
    colorschemes.everforest.enable = true;
    plugins = {
      bufferline.enable = true;
      guess-indent.enable = true;
      lualine.enable = true;
      treesitter = {
        enable = true;
        settings.highlight.enable = true;
      };
      web-devicons.enable = true;
    };
  };
}
