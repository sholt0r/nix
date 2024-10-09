{
  description = "Sholt0r Darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, nix-homebrew, home-manager, ... }: {
    darwinConfigurations."mba" = nix-darwin.lib.darwinSystem {
      modules = [ 
      	./system/darwin.nix
        ./system/brew.nix

        home-manager.darwinModules.home-manager
        {
          users.users.jstaples = {
	          name = "jstaples";
	          home = "/Users/jstaples";
	        };
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            users.jstaples = import ./home/home.nix;
          };
        }

        nix-homebrew.darwinModules.nix-homebrew
        {
          nix-homebrew = {
            enable = true;
            enableRosetta = true;
            user = "jstaples";
          };
        }

      ];
    };
    darwinPackages = self.darwinConfigurations."mba".pkgs;
  };
}
