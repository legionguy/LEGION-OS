{
  config,
  pkgs,
  lib,
  ...
  }:
  
  {
    boot.loader = {
      timeout = 3;
      grub = {
        enable = true;
        device = "/dev/sda";
        useOSProber = true;
        timeoutStyle = "menu";
        # later - theme =

        };
      };
  }