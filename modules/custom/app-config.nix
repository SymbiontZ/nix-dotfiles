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
            userSettings = {
                "editor.fontFamily" = "'JetBrainsMono Nerd Font', 'monospace', monospace";
                "editor.fontSize" = 14;
                "editor.fontLigatures" = true;
                "terminal.integrated.fontFamily" = "'JetBrainsMono Nerd Font'";
                "terminal.integrated.fontSize" = 13;
            };
        };
    };
}