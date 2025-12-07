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
}