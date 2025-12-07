{ ... }:

{
    imports = [
        ./home-manager.nix
        ./alias.nix
        ./appconfs/programs.nix
        ./appconfs/starship.nix
        ./appconfs/vscode.nix
    ];
}