{ pkgs, ... }:

{
    # Kitty terminal
    programs.kitty = {
        enable = true;
        font = {
            name = "JetBrainsMono Nerd Font";
            size = 12.0;
        };
        settings = {
            bold_font = "JetBrainsMono Nerd Font Bold";
            italic_font = "JetBrainsMono Nerd Font Italic";
            bold_italic_font = "JetBrainsMono Nerd Font Bold Italic";
        };
    };

    # VS Code
    programs.vscode = {
        enable = true;
        profiles.default = {
            extensions = with pkgs.vscode-extensions; [
                github.copilot
                github.copilot-chat

                bbenoist.nix
                
                pkief.material-icon-theme
                pkief.material-product-icons
            ];
            userSettings = {
                "editor.fontFamily" = "'JetBrainsMono Nerd Font', 'monospace', monospace";
                "editor.fontSize" = 16;
                "editor.fontLigatures" = true;
                "terminal.integrated.fontFamily" = "'JetBrainsMono Nerd Font'";
                "terminal.integrated.fontSize" = 14;
                
                "workbench.iconTheme" = "material-icon-theme";
            };
        };
    };

    # Zsh
    programs.zsh = {
        enable = true;
        
        # Historial
        history = {
            size = 10000;
            save = 10000;
            ignoreDups = true;
            ignoreSpace = true;
        };
        
        # Opciones de autocompletado
        enableCompletion = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;
        
        # Configuración inicial
        initContent = ''
            # Prompt básico (puedes personalizarlo o usar starship)
            PROMPT='%F{cyan}%n@%m%f:%F{blue}%~%f$ '
        '';
    };
}