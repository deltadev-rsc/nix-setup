{
    programs.hyprlock = {
        enable = true;
        settings = {
            general = {
                disable_loading_bar = true;
                grace = 10;
                hide_cursor = true;
                no_fade_in = false;
            };

            label = {
                text = "Tvoy hypr zalochen. Vvedi parol";
                font_size = 96;
                font_family = "JetBrainsMono";
                color = "rgba(181825)";
                position = "0, 600";
                halign = "center";
                walign = "center";
                shadow_passes = 1;
            };

            background = [
                {
                    path = "~/walls/nix-wall-4.png";
                    blur_passes = 1;
                    blur_size = 1;
                }
            ];

            input-field = [
                {
                    size = "200, 50";
                    position = "0, -80";
                    monitor = "";
                    dots_center = true;
                    font_color = "rgb(235, 219, 178)";
                    inner_color = "rgb(40, 40, 40)";
                    outer_color = "rgb(60, 56, 54)";
                    outline_thickness = 5;
                    placeholder_text = "sussy baka";
                    shadow_passes = 1;
                }
            ];
        };
    };
}
