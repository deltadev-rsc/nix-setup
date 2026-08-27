{ config, pkgs, ... }:

{
    nixpkgs.config.allowUnfree = true;

    services.hypridle.enable = true;
    services.hyprpaper.enable = true;

    home.packages = with pkgs; [
        waybar
        swaynotificationcenter

        # GUI apps
        obs-studio
        telegram-desktop
        zed-editor
        vlc
        gnome-calculator
        gnome-calendar

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
        wlogout
        helix

        hyprlock
        hyprpicker
        hyprpaper
        hypridle

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

        (python3.withPackages (python-pkgs: with python-pkgs; [
            pygobject3
            gtk3
        ]))

        libnotify
    ];
}
