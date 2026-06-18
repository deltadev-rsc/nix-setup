{ config, pkgs, ... }:

{
    programs.wofi = {
        enable = true;
        settings = {
            weight = 450;
            height = 400;
            term = "kitty";
            insensitive = true;
            local = "ceneter";
            orientantion = "vertocal";
            line_wrap = "off";
            dynamic_lines = true;
            exec_search = true;
            parse_actions = true;
            sort_order = "default";
            offset_x = 0;
            offset_y = 0;
            background_opacity = 0.90;
            font = "JetBrainsMono 11";
            allow_images = true;
            icon_size = 23;
            image_size = 23;
            no_escape = false;
            hide_scrollbar = true;
            cycle = true;
            always_parse_args = true;
            print_command = false;
            gtk_dark = true;
            horizontal_padding = 3;
            vertical_padding = 3;
            line_spacing = 0;
            hide_on_focus_lost = true;
            allow_markup = true;
            show = "drun";
            prompt = "Start application";
        };
    };

    home.file.".config/wofi/style.css".source = ./style.css;
}
