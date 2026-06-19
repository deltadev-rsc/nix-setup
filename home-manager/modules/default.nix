{ config, pkgs, ... }:

{
    imports = [
        ./waybar 
        ./wofi
        ./hyprland
        ./kitty
    ];
}
