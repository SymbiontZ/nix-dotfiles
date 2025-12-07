{pkgs, lib, ...}:

{
  environment.systemPackages = with pkgs; [

    # Apps
    zsh
    kitty
  ];
}