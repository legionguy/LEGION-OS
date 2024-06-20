{
  config,
  pkgs,
  lib,
  ...
  }:
  
  {
   security.rtkit.enable = true;
   hardware = {
    pulseaudio = {
      enable = true;
      zeroconf = {
        discovery.enable = true;
        publish.enable = true;
        };
      support32Bit = true;
      package = pkgs.pulseaudioFull;

      
      };
      };
  }
# done