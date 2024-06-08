{
  config,
  lib,
  pkgs,
  ...
  }:
  {
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
        package = true;
        enableExtensionPack = true;
        enable = true;
    };
      };
        };
   }
