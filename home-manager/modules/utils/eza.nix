{ pkgs, ... } :

{
    programs.eza = {
        enable = true;
        enableZshIntegration = true;
        colors = "always";
        git = true;
        icons = "always";
        extraOptions = [
            "--level=1"
            "--group-directories-first"
        ];
    };
}
