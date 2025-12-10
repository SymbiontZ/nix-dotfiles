{ ... }:

{
    programs.starship = {
        enable = true;
        enableZshIntegration = true;
        settings = {
            # Formato del prompt
            format = "[](fg:#3B76F0)$directory\${custom.sep_git}$git_branch$git_status$cmd_duration$line_break$character";
            character = {
                success_symbol = "[❯](bold green)";
                error_symbol = "[❯](bold red)";
            };
            
            directory = {
                truncation_length = 3;
                truncate_to_repo = true;

                format = "[ $path]($style)";
                style = "fg:white bold bg:#3B76F0";
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

            custom.sep_git = {
                command = "";
                format = " [](fg:#3B76F0 bg:#1E1E2E)";
                style = "bg:#1E1E2E fg:#3B76F0";
                when = "git rev-parse --is-inside-work-tree >/dev/null 2>&1";
            };
        };
    };
}