{ pkgs, ... }:

{
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  environment.systemPackages = with pkgs; [
    home-manager
  ];

  fonts.packages = [ pkgs.nerd-fonts.jetbrains-mono ];
}