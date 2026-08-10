{ config, pkgs, lib, ... }:

{
    boot.loader = {
		efi = {
			canTouchEfiVariables = true;
			efiSysMountPoint = "/boot";
		};

		systemd-boot.enable = true;
	};

	boot.kernelPackages = pkgs.linuxPackages_latest;
}
