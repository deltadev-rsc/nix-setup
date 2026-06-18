{ config, pkgs, ... }:

{
    imports = [
        ./hyprland
        ./waybar 
        ./wofi
    ];
}
