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
  };

  outputs = { self, nixpkgs, home-manager }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
	config.allowUnfree = true;
      };
      lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
        nixos-laptop = lib.nixosSystem {
	  inherit system;
	  modules = [
	    ./configuration.nix
	    ./hosts/nixos-laptop.nix
	    home-manager.nixosModules.home-manager {
	      home-manager.useGlobalPkgs = true;
	      home-manager.useUserPackages = true;
	      home-manager.users.frosty = {
	        imports = [ ./home.nix ];
	      };
	    }
	  ];
	};
      };
    };
}
