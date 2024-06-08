{
  config,
  lib,
  pkgs,
  ...
}:

{
  services = {
    guix = {
      enable = true;
      gc.enable = true;
      gc.dates = "weekly";
    };
    
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
    git = {
      enable = true;
      userName = "legionguy";
      userEmail = "legionoffice2005@gmail.com";
    };
    adb.enable = true;
  };
}

