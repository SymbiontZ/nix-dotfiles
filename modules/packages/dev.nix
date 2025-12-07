{pkgs, lib, ...}:

{
  environment.systemPackages = with pkgs; [

    # Apps
    git
    vscode
    docker

    lazygit
    lazydocker

    # Libs
    python312
    nodejs_24
    php

  ];
}