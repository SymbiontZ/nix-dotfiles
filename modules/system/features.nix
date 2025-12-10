{ pkgs, ... }:

{
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  environment.systemPackages = with pkgs; [
    home-manager
  ];

  #Fuentes Nerd Font
  fonts.packages = [ pkgs.nerd-fonts.jetbrains-mono ];

  #Multiscreen
  services.xserver.videoDrivers = [ "modesetting" ];

  #Tablet support 
  hardware.opentabletdriver.enable = true;
}