{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/8f6efd53-c2a4-4161-8864-44ecebb2ccd6";
    fsType = "ext4";
  };

  swapDevices = [ ];

  boot = {
    initrd = {
      availableKernelModules = [ "ehci_pci" "ahci" "firewire_ohci" "xhci_pci" "usb_storage" "sd_mod" "sr_mod" "sdhci_pci" ];
      kernelModules = [];
    };
    kernelModules = [];
    extraModulePackages = [];
    loader = {
      grub = {
        enable = true;
        device = "/dev/sda";
        useOSProber = true;
        extraConfig = ''
          GRUB_CMDLINE_LINUX_DEFAULT="quiet loglevel=3"
          GRUB_CMDLINE_LINUX="quiet loglevel=3"
        '';
      };
    };
    kernelPackages = pkgs.linuxPackages; # Use a single kernel package
  };

  nixpkgs = {
    hostPlatform = lib.mkDefault "x86_64-linux";
    config.allowUnfree = true;
    config.allowBroken = true;
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  hardware = {
    cpu.intel.updateMicrocode = true;
    enableRedistributableFirmware = true;
    bluetooth.enable = true;
    pulseaudio.enable = true;
  };

  networking.networkmanager.enable = true;

  users.users.batman = {
    isNormalUser = true;
    description = "BATMAN";
    extraGroups = [ "networkmanager" "wheel" "video" ]; # Ensure the user is part of the video group
    packages = with pkgs; [
      vscodium
      gparted
      godot_4
      blender
      discord
      spotify
      obs-studio
      zoom-us
    ];
  };

  environment.systemPackages = with pkgs; [
    git
    nmap
    wget2
    curl
    micro
    sudo
    uutils-coreutils-noprefix
    firefox
    btop
    direnv
    fastfetch
    krita
    mesa
  ] ++ (with pkgs.kdePackages; [
    ktorrent
    kdenlive
    kcalc
    krdc
    kmousetool
    konversation
    kmag
    kapman
    # kwave
  ]);

  services = {
    desktopManager.plasma6 = {
      enable = true;
    };
    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };
    xserver = {
      enable = true;
      layout = "us";
      videoDrivers = [ "intel" "mesa" ]; # Ensure correct video drivers are installed
      dpi = 96;# Remove font-jetbrains-mono from fontPath
    };

    printing = {
      enable = true;
      webInterface = true;
    };

    flatpak.enable = true;
  };

  virtualisation = {
    waydroid.enable = true;
    podman.enable = true;
  };

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    elisa
    plasma-welcome
  ];

  i18n = {
    inputMethod = {
      fcitx5.plasma6Support = true;
    };
    defaultLocale = "en_US.UTF-8";
    extraLocaleSettings = {
      LC_ADDRESS = "en_US.UTF-8";
      LC_IDENTIFICATION = "en_US.UTF-8";
      LC_MEASUREMENT = "en_US.UTF-8";
      LC_MONETARY = "en_US.UTF-8";
      LC_NAME = "en_US.UTF-8";
      LC_NUMERIC = "en_US.UTF-8";
      LC_PAPER = "en_US.UTF-8";
      LC_TELEPHONE = "en_US.UTF-8";
      LC_TIME = "en_US.UTF-8";
    };
  };

  time.timeZone = "Asia/Kolkata";

  system.stateVersion = "24.05";


}
