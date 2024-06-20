{
  config,
  pkgs,
  lib,
  ...
  }:
  
  {
    boot = {
      kernelParams = [
        "quiet"
        "udev.log_level=3"
        ];
      consoleLogLevel = 0;
      readOnlyNixStore = true;
      initrd = {
        verbose = false;
        includeDefaultModules = true;
        kernelModules = [ "kvm-intel" ];
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
      kernelPackages = pkgs.linuxPackages;
      
      kernel = {
        enable = true;
        };
      };
  }

# cant use plymout because of activation script
# done
