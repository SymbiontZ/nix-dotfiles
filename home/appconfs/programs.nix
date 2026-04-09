{ pkgs, spicePkgs, ... }:

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

    # # Yuzu con plugins personalizados
    # programs.yuzu = {
    #     enable = true;
    # };

    # # Clonar repositorio de plugins de Yuzu
    # home.activation = {
    #     cloneYuzuPlugins = pkgs.lib.hm.dag.entryAfter ["writeBoundary"] ''
    #         $DRY_RUN_CMD mkdir -p $HOME/.local/share/yuzu/plugins
            
    #         YUZU_PLUGINS_DIR="$HOME/.local/share/yuzu/plugins"
    #         YUZU_REPO_DIR="$YUZU_PLUGINS_DIR/mi-config"
            
    #         if [ ! -d "$YUZU_REPO_DIR" ]; then
    #             echo "Clonando repositorio de plugins de Yuzu..."
    #             $DRY_RUN_CMD ${pkgs.git}/bin/git clone \
    #                 --branch tu-rama-aqui \
    #                 https://github.com/tu-usuario/tu-repo-yuzu-plugins.git \
    #                 "$YUZU_REPO_DIR"
    #         else
    #             echo "Actualizando repositorio de plugins de Yuzu..."
    #             cd "$YUZU_REPO_DIR"
    #             $DRY_RUN_CMD ${pkgs.git}/bin/git pull origin tu-rama-aqui
    #         fi
    #     '';
    # };
}