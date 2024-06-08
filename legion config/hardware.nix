{
  config,
  lib,
  pkgs,
  ...
}:

{
  fileSystems."/" = {
    device = "/dev/disk/by-uuid/8f6efd53-c2a4-4161-8864-44ecebb2ccd6";
    fsType = "ext4";
  };

  swapDevices = [ ];

  boot = {
    kernelPackages = [
      pkgs.linuxPackages
      pkgs.linuxPackages_latest
    ];

    loader = {
      grub = {
        enable = true;
        device = "/dev/sda";
        useOSProber = true;
        gfxmodeBios = "auto";
        theme = "/etc/nixos/grub theme";
      };
    };
    readOnlyNixStore = true;
    kernelModules = [
      "vboxdrv"
      "vboxnetflt"
      "vboxnetadp"
      "vboxpci"
    ];
    initrd = {
      includeDefaultModules = true;
      availableKernelModules = [
        "ehci_pci"
        "ahci"
        "firewire_ohci"
        "xhci_pci"
        "usb_storage"
        "sd_mod"
        "sr_mod"
        "sdhci_pci"
      ];
    };
  };

  networking = {
  hostName = "LEGION OS";
  
  networkmanager = {
    wifi.scanRandMacAddress = true;
    plugins = [ 
      pkgs.networkmanager-openvpn 
      pkgs.networkmanager-vpnc 
      pkgs.networkmanager-sstp 
      pkgs.networkmanager-l2tp 
      pkgs.networkmanager-iodine 
    ];
  };
  };

  hardware = {
    bluetooth = {
      enable = true;
      package = pkgs.bluez;
    };
    cpu.intel.updateMicrocode = true;
    enableRedistributableFirmware = true;
  };

  nixpkgs = {
    config.allowUnfree = true;
    config.allowBroken = true;
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}

