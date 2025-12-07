{ pkgs, spicetify-nix, ... }:

let
    spicePkgs = spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
in
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
    };

    # Starship prompt
    programs.starship = {
        enable = true;
        enableZshIntegration = true;
        settings = {
            # Formato del prompt
            format = "$username$hostname$directory$git_branch$git_status$cmd_duration$line_break$character";
            
            character = {
                success_symbol = "[❯](bold green)";
                error_symbol = "[❯](bold red)";
            };
            
            directory = {
                truncation_length = 3;
                truncate_to_repo = true;
            };
            
            git_branch = {
                symbol = " ";
                style = "bold purple";
            };
            
            git_status = {
                style = "bold red";
            };
            
            cmd_duration = {
                min_time = 500;
                format = "[$duration](bold yellow) ";
            };
        };
    };

    # Spicetify (Spotify personalizado)
    programs.spicetify = {
        enable = true;
        theme = spicePkgs.themes.catppuccin;
        colorScheme = "mocha";
        
        enabledExtensions = with spicePkgs.extensions; [
            adblock
            hidePodcasts
            shuffle
        ];
    };
}