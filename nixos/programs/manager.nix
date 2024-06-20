{
  config,
  pkgs,
  lib,
  ...
  }:

  {
    services = {
      flatpak.enable = true;
      guix = {
        package = pkgs.guix;
        enable = true;
        gc = {
          enable = true;
          dates = "weekly";
          };
        
        };
      };
  }
# more will add later
