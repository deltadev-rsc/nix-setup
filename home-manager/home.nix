{ config, pkgs, ... }:

{
    imports = [
        ./modules
        ./home-pkgs.nix
    ];

    home.enableNixpkgsReleaseCheck = false;
    home.username = "deltaqxq";
    home.homeDirectory = "/home/deltaqxq";
    home.stateVersion = "26.05"; # Please read the comment before changing.
    home.sessionVariables = {
        EDITOR = "nvim";
        GDK_BACKEND = "wayland";
        XDG_SESSION_TYPE = "wayland";
    };

    programs.home-manager.enable = true;
}
