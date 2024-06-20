{
  config,
  pkgs,
  lib,
  ...
  }:
  
  {
    fonts = {
      enableDefaultPackages = true;
      
      packages = [
        pkgs.fira-code-nerdfont
        pkgs.whatsapp-emoji-font
    ];
  };
  }
# done
