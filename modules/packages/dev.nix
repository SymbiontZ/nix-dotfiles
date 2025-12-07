{pkgs, lib, ...}:

{
  environment.systemPackages = with pkgs; [

    # Apps
    zsh
    kitty
    git
    vscode

    # Libs
    python312
    nodejs_24
    php

  ];
}