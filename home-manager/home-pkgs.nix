{ config, pkgs, ... }:

{
    nixpkgs.config.allowUnfree = true;
    home.packages = with pkgs; [
        waybar

        # GUI apps
        obs-studio
        
        # CLI and TUI
        fzf
        htop
        microfetch
        onefetch
        grim
        slurp
        swaybg
        hyprlock
        peaclock
        
        libnotify
        xdg-desktop-portal-gtk
        xdg-desktop-portal-hyprland
    ];
}
