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
                font_size = 36;
                font_family = "JetBrainsMono";
                color = "rgb(cdd6f4)";
                position = "0, 600";
                halign = "center";
                walign = "center";
                shadow_passes = 1;
            };

            background = [
                {
                    path = "~/walls/catp/catppuccin-wall-10.png";
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
                    font_color = "rgb(cdd6f4)";
                    inner_color = "rgb(313244)";
                    outer_color = "rgb(1e1e2e)";
                    outline_thickness = 5;
                    placeholder_text = "sussy baka";
                    shadow_passes = 1;
                }
            ];
        };
    };
}
