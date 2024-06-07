{
  config,
  lib,
  pkgs,
  ...
  }:
  
  services = {
    printing = {
      webInterface = true;
      startWhenNeeded = true;
      enable = true;

      };
    
    flatpak = {
      enable = true;

      };
    };

    programs = {
      adb.enable = true;
      };