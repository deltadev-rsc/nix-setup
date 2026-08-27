{ config, pkgs, ... }:

{
    imports = [
        # ./catp.nix # for catppuccin
        ./tokyonight.nix # for tokyonight
        # ./ayu.nix # for ayu
    ];

    programs.kitty = {
        enable = true;
    };

    programs.kitty.settings = {
        font_family = "JetBrainsMono Nerd Font";
        cursor_trail = 3;
        offset_x = 0;
        offset_y = 0;
        #        background_opacity = 0.85;
    };
}
