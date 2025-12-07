{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [

    #PHP
    php84Packages.composer


    #VSCode
    vscode-extensions.github.copilot
    vscode-extensions.github.copilot-chat
    vscode-extensions.pkief.material-icon-theme
    vscode-extensions.pkief.material-product-icons

    ];
}