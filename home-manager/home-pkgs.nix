{ config, pkgs, ... }:

{
    nixpkgs.config.allowUnfree = true;
    home.packages = with pkgs; [
        waybar
        swaynotificationcenter

        # GUI apps
        obs-studio
        telegram-desktop
        zed-editor
        vlc

        # CLI and TUI
        fzf
        htop
        btop
        wofi
        microfetch
        onefetch
        fastfetch
        nitch
        grim
        slurp
        swaybg
        hyprlock
        hyprpicker
        peaclock
        dpkg
        yazi
        eza
        bat
        tree
        zoxide
        pfetch 
        ufetch
        screenfetch
        
        libnotify
    ];
}
