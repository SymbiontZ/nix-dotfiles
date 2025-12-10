{ ... }:

{
  programs.zsh = {
    shellAliases = {
      # Sistema
      update = "sudo nixos-rebuild switch --flake /home/.dotfiles#symbiontz";
      hm = "home-manager switch --flake /home/.dotfiles#symbiontz -b backup";
      clean = "sudo nix-collect-garbage -d && nix-collect-garbage -d";
      
      # Navegación
      ".." = "cd ..";
      "..." = "cd ../..";
      ll = "ls -la";
      la = "ls -A";
      lookdotfiles = "code /home/.dotfiles && exit";
      lookfiles = "ranger";
      
      # Git
      gs = "git status";
      ga = "git add";
      gc = "git commit";
      gp = "git push";
      gl = "git log --oneline";
      
      # Otros
      c = "clear";
      q = "exit";
    };
  };
}