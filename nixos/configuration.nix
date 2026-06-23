{ config, pkgs, ... }:

{
  	imports = [ # Include the results of the hardware scan.
      		./hardware-configuration.nix
    	];

	boot.loader = {
		efi = {
			canTouchEfiVariables = true;
			efiSysMountPoint = "/boot";
		};

		grub = {
			enable = true;
			efiSupport = true;
			device = "nodev";
			useOSProber = true;
		};

		systemd-boot.enable = false;
	};

	boot.kernelPackages = pkgs.linuxPackages_latest;

  	networking.hostName = "nixos";
  	networking.wireless.enable = true;
  	networking.networkmanager.enable = true;

  	time.timeZone = "Asia/Yekaterinburg";

  	i18n.defaultLocale = "en_US.UTF-8";
  	i18n.extraLocaleSettings = {
    		LC_ADDRESS = "ru_RU.UTF-8";
    		LC_IDENTIFICATION = "ru_RU.UTF-8";
    		LC_MEASUREMENT = "ru_RU.UTF-8";
    		LC_MONETARY = "ru_RU.UTF-8";
    		LC_NAME = "ru_RU.UTF-8";
    		LC_NUMERIC = "ru_RU.UTF-8";
    		LC_PAPER = "ru_RU.UTF-8";
    		LC_TELEPHONE = "ru_RU.UTF-8";
    		LC_TIME = "ru_RU.UTF-8";
  	};

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

  	services.pulseaudio.enable = false;
  	security.rtkit.enable = true;
  	services.pipewire = {
    		enable = true;
    		alsa.enable = true;
    		alsa.support32Bit = true;
    		pulse.enable = true;
    		jack.enable = true;
  	};

  	services.xserver.libinput.enable = true;

  	security.doas.enable = true;
  	security.doas.extraRules = [{
  		groups = [ "users" "wheel" ];
		persist = true;
		keepEnv = true;
  	}];

  	users.users."deltaqxq" = {
    		isNormalUser = true;
    		shell = pkgs.fish;
    		description = "deltaqxq";
    		extraGroups = [ "networkmanager" "wheel" ];
    		packages = with pkgs; [
      			kdePackages.kate
    		];
  	};

  	programs.firefox.enable = true;

  	nixpkgs.config.allowUnfree = true;
	nix.settings.experimental-features = [ "nix-command" "flakes" ];
  	programs.hyprland = {
		enable = true;
		withUWSM = false;
		xwayland.enable = true;
	};

  	programs.waybar.enable = false;
  	programs.fish.enable = true;

	# For dynamically binary file
	programs.nix-ld.enable = true;

  	environment.systemPackages = with pkgs; [
		# Basics
		vim
  		wget
		curl
		git
		lazygit
		kitty
		qemu
		home-manager 
		neovim
		gnused
		unzip
		nftables		
	
		# Meme
		cava
		cmatrix
		cbonsai		
		uwufetch

		# ===============
		# || Dev tools ||
		# ===============

		# Build systems
		gnumake
		cargo
		cmake
		meson
		ninja

		# Compilers
		gcc
 		llvmPackages_latest.clang
		llvmPackages_latest.libclang
		llvmPackages_latest.llvm
		clang-tools
		go
		gopls
		gotools
		rustc
		rustup
		nasm
		lld
		
		# Interpretors and libraries
		lua
		python3
		lua53Packages.luarocks
		nodejs
		pkg-config
		openssl
		ncurses
  	];

  	fonts.packages = with pkgs; [
  		nerd-fonts.jetbrains-mono
  		nerd-fonts.fira-code
  		nerd-fonts.symbols-only  # Essential for general Nerd Font icons
  	];

  	# Some programs need SUID wrappers, can be configured further or are
  	# started in user sessions.
  	# programs.mtr.enable = true;
  	#programs.gnupg.agent = {
  	#	enable = true;
  	#	enableSSHSupport = true;
  	#};

  	# List services that you want to enable:

  	# Enable the OpenSSH daemon.
  	# services.openssh.enable = true;

  	# Open ports in the firewall.
  	# networking.firewall.allowedTCPPorts = [ ... ];
	# networking.firewall.allowedUDPPorts = [ ... ];
	# Or disable the firewall altogether.
  	# networking.firewall.enable = false;

  	# This value determines the NixOS release from which the default
  	# settings for stateful data, like file locations and database versions
  	# on your system were taken. It‘s perfectly fine and recommended to leave
  	# this value at the release version of the first install of this system.
  	# Before changing this value read the documentation for this option
  	# (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  	system.stateVersion = "26.05"; # Did you read the comment?
}
