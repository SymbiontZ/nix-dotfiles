{ ... }:

{
  imports = [
    # System

    ./system/features.nix
    ./system/configuration.nix
    ./system/hardware-configuration.nix
    ./system/desktop.nix

    # Packages
    ./packages/dev.nix
    ./packages/dev-extensions.nix
    ./packages/base.nix
  ];
}