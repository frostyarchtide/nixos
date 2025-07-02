{
  config,
  pkgs,
  inputs,
  ...
}:

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
    globals.mapleader = " ";
    colorschemes.everforest.enable = true;
    plugins = {
      bufferline.enable = true;
      guess-indent.enable = true;
      lualine.enable = true;
      nvim-autopairs.enable = true;
      telescope = {
        enable = true;
        extensions.fzf-native.enable = true;
        keymaps = {
          "<leader>ff" = "find_files";
          "<leader>fg" = "live_grep";
        };
      };
      treesitter = {
        enable = true;
        settings.highlight.enable = true;
      };
      web-devicons.enable = true;
    };
  };

  home.packages = with pkgs; [ ripgrep ];
}
