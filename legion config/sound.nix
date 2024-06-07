{
  config,
  lib,
  pkgs,
  ...
  }:

  hardware.pulseaudio = {
    enable = true;
    package = pkgs.pulseaudioFull;
    zeroconf.publish.enable = true;
    zeroconf.discovery.enable = true;
    
    };