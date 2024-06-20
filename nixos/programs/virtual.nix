{
  config,
  pkgs,
  lib,
  ...
  }:

  {
    virtualisation.virtualbox = {
      guest = {
        seamless = true;
        enable = true;
        draganddrop = true;
        clipboard = true;
        };
      
      host = {
        enableExtensionPack = true;
        enable = true;
        addNetworkInterface = true;
        };
        };
  }