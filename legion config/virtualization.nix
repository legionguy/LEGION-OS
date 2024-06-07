{
  config,
  lib,
  pkgs,
  ...
  }:

  virtualisation = {
    waydroid.enable = true;
    
    virtualbox = {
      guest = {
        seamless = true;
        enable = true;
        guest.dragAndDrop = true;
        clipboard = true;
      };
    
    host = {
        package
        enableExtensionPack = true;
        enable = true;
    };
      };
        };
   