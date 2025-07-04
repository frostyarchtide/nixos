#################################
### NIXOS CONFIGURATION FLAKE ###
#################################

{
  description = "NixOS Configuration Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      overlays = [
        (import ./overlays/sandscreen.nix)
      ];
      pkgs = import nixpkgs {
        inherit system overlays;
        config.allowUnfree = true;
      };
      lib = nixpkgs.lib;
    in
    {
      nixosConfigurations = {
        nixos-laptop = lib.nixosSystem {
          inherit system;
          modules = [
            ./system/nixos-laptop.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.extraSpecialArgs.inputs = inputs;
              home-manager.users.frosty.imports = [ ./home/nixos-laptop.nix ];
            }
          ];
          pkgs = pkgs;
        };
      };
    };
}
