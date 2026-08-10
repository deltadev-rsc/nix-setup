{ config, pkgs, lib, ... }:

let
    lock = "${pkgs.systemd}/bin/loginctl lock-session";
    brillo = lib.getExe pkgs.brillo;
    timeout = 300;
in {
    services.hypridle = {
        enable = true;

        package = pkgs.hypridle;

        settings = {
            general = {
                before_sleep_cmd = "loginctl lock-session";
                lock_cmd = "pgrep hyprlock || ${lib.getExe config.programs.hyprlock.package}";
            };

            listener = [
                {
                    timeout = timeout - 10;
                    on-timeout = "${brillo} -O; ${brillo} -u 500000 -S 10";
                    on-resume = "${brillo} -I -u 250000";
                }
                {
                    inherit timeout;
                    on-timeout = "";
                    on-resume = "";
                }
                {
                    timeout = timeout + 10;
                    on-timeout = lock;
                }
            ];
        };
    };
}
