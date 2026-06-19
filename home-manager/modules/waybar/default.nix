{ config, pkgs, ... }: 

{
    programs.waybar = {
        enable = true;
        style = ./style.css;
        settings = {
            mainBar = {
                layer = "top";
                position = "top";
                height = 30;
                margin-top = 2;
                margin-bottom = 2;
                margin-right = 6;
                margin-left = 6;

                modules-left = [
                    "custom/logo"
                    "hyprland/workspaces"
                ];

                modules-center = [
                    "backlight"
                    "clock"
                ];

                modules-right = [
                    "tray"
                    "memory"
                    "cpu"
                    "network"
                    "wireplumber"
                    "battery"
                ];

                "wlr/taskbar" = {
                    format = "{icon}";
                    on-click = "activate";
                    on-click-right = "fullscreen";
                    icon-theme = "WhiteSur";
                    icon-size = 25;
                    tooltip-format = "{title}";
                };

                "hyprland/workspaces" = {
                    disable-scroll = true;
                    show-special = false;
                    all-outputs = false;
                    on-click = "activate";
                    format = "{icon}"; 
                    format-icons = {
                        default = "";
                        "1" = "";
                        "2" = "󰈹";
                        "3" = "";
                        "4" = "";
                        "5" = "󱧶";
                        "6" = "󰠮";
                        "active" = "󱓻";
                        "urgent" = "󱓻";
                    }; 

                    "persistent-workspaces" = {
                        "*" = 6;
                    };
                };

                "backlight" = {
                    interval = 2;
                    format = "  {percent}%";
                };

                "memory" = {
                    interval = 5;
                    format = "  {}%";
                    max-length = 10;
                };

                "cpu" = {
                    interval=  1;
                    format = "  {usage}%";
                    max-length = 10;
                };

                "tray" = {
                    spacing = 11;
                };

                "clock" = {
                    tooltip-format = "{calendar}";
                    format-alt = "  {:%a, %d %b %Y}";
                    format = "  {:%I:%M %p}";
                };

                "network" = {
                    format-wifi = "{icon}";
                    format-icons = ["󰤯" "󰤟" "󰤢" "󰤥" "󰤨"];
                    format-ethernet = "󰀂";
	                format-alt = "󱛇";
                    format-disconnected = "󰖪";
	                tooltip-format-wifi = "{icon} {essid}\n⇣{bandwidthDownBytes}  ⇡{bandwidthUpBytes}";
                    tooltip-format-ethernet = "󰀂  {ifname}\n⇣{bandwidthDownBytes}  ⇡{bandwidthUpBytes}";
	                tooltip-format-disconnected = "Disconnected";
	                interval = 5;
	                nospacing = 1;
                };

                "wireplumber" = {
                    format = "{icon}  {volume}%";
                    format-bluetooth = "󰂰";
                    nospacing = 1;
                    tooltip-format = "Volume : {volume}%";
                    format-muted = "󰝟";
                    format-headphone = "";
                    format-icons = {
                        headphone = "";
                        default = ["󰖀" "󰕾" ""];
                    };
                    on-click = "pamixer -t";
                    scroll-step = 1;
                };

                "custom/logo" = {
                    format = "  NixOS ";
                    tooltip = false;
                    on-click = "wofi --show drun";
                };

                "battery" = {
                    format = "{capacity}% {icon}";
                    format-icons = {
                        charging = [ "󰢜" "󰂆" "󰂇" "󰂈" "󰢝" "󰂉" "󰢞" "󰂊" "󰂋" "󰂅" ];
                        default = [ "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹" ];
                    };
                    
                    format-full = "Charged ";
                    interval = 5;
                    states = {
                        warning = 20;
                        critical = 10;
                    };

                    tooltip = false;
                };
            };
        };
    };
}
