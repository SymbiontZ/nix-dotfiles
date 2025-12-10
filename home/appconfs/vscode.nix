{ pkgs, ...}:

{
    programs.vscode = {
        enable = true;
        profiles.default = {
            extensions = with pkgs.vscode-extensions; [
                github.copilot
                github.copilot-chat

                bbenoist.nix
                naumovs.color-highlight
                
                pkief.material-icon-theme
                pkief.material-product-icons
            ];
            userSettings = {
                "editor.fontFamily" = "'JetBrainsMono Nerd Font', 'monospace', monospace";
                "editor.fontSize" = 16;
                "editor.fontLigatures" = true;
                "terminal.integrated.fontFamily" = "'JetBrainsMono Nerd Font'";
                "terminal.integrated.fontSize" = 14;

                "github.confirmSync" = false;
                "explorer.confirmDragAndDrop" = false;

                "workbench.iconTheme" = "material-icon-theme";
                "workbench.productIconTheme" = "material-product-icons";
            };
        };
    };
}