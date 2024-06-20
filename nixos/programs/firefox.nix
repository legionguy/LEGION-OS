{
  config,
  pkgs,
  lib,
  ...
  }:

  {
    programs.firefox = {
      package = pkgs.firefox-esr;
      enable = true;
      };
  }
# more will add soon 
# done