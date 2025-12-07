{
  description = "Flake base";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager,... }:
    let
        system = "x86_64-linux";
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
    in {
      nixosConfigurations.symbiontz = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./modules/default.nix
        ];
      };
      homeConfigurations."symbiontz" = home-manager.lib.homeManagerConfiguration
      {
        inherit pkgs;
        modules = [
          ./modules/custom/home-manager.nix
          ./modules/custom/app-config.nix
        ];
      };
    };
}
