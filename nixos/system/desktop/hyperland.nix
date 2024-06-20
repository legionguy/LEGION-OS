{
  config,
  pkgs,
  lib,
  ...
  }:
  
  {
    programs = {
      hyprlock.enable = true;
      hyprland = {
        xwayland.enable = true;
        package = pkgs.hyprland;
        enable = true;
        systemd.setPath.enable = true;
        
        portalPackage = pkgs.xdg-desktop-portal-hyprland;
      };
      };
    services.hypridle.enable = true;
  }
