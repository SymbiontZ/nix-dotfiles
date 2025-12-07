{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [

    #PHP
    php84Packages.composer

    ];
}