{
  config,
  pkgs,
  lib,
  ...
  }:
  
  {
    fileSystems."/" =
    { device = "/dev/disk/by-uuid/dd2895f9-abc9-4e83-9596-be3e8a546adc";
      fsType = "btrfs";
      options = [ "subvol=@" ];
    };

  swapDevices = [ ];
    services.btrfs = {
      autoScrub.enable = true;
      autoScrub.interval = "monthly";
      };
  }
# done