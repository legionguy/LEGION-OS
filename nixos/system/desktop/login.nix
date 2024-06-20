{
  config,
  pkgs,
  lib,
  ...
  }:
  
  {
    services.displayManager.sddm = {
      theme = ""; # goona use legion pkgs
      enableHidpi = true;
      
      enable = true;
      wayland = {
        enable = true;
        compositor = "kwin";
        };
      };
  }
