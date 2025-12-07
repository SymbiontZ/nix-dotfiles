{
  description = "Flake base";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";

  };

  outputs = { self, nixpkgs, home-manager, spicetify-nix, ... }:
    let
        system = "x86_64-linux";
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
        spicetifyPkgs = spicetify-nix.legacyPackages.${system};
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
        extraSpecialArgs = { inherit spicetify-nix; };
        modules = [
          spicetify-nix.homeManagerModules.default
          ./home/default.nix
        ];
      };
    };
}
