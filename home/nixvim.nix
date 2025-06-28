{ config, inputs, ... }:

{
  imports = [
    inputs.nixvim.homeModules.nixvim
  ];

  programs.nixvim.enable = true;
#  imports = [
#    inputs.nixvim.homeModules.nixvim
#    inputs.nixvim.nixosModules.nixvim
#    inputs.nixvim.nixDarwinModules.nixvim
#  ];

#  programs.nixvim.enable = true;
}
