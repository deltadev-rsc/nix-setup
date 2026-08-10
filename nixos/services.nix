{ config, pkgs, lib, ... }:

{
    # Flatpak
	services.flatpak.enable = true;

  	services.xserver.enable = true;
  	services.displayManager.sddm.enable = true;
  	services.desktopManager.plasma6.enable = true;
  	services.xserver.xkb = {
    		layout = "us";
    		variant = "";
  	};

  	services.printing.enable = true;

  	security.rtkit.enable = true;
  	services.pipewire = {
    		enable = true;
    		alsa.enable = true;
    		alsa.support32Bit = true;
            pulse.enable = true;
            wireplumber.enable = true;
    		jack.enable = true;
  	};

    services.pulseaudio.enable = false;

  	services.xserver.libinput.enable = true;
}
