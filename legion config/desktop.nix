{
  config,
  lib,
  pkgs,
  ...
}:
{

  services.xserver = {
    enable = true;
    desktopManager.mate.enable = true;
  };
}
  
