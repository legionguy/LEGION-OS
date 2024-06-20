{
  config,
  pkgs,
  lib,
  ...
  }:

  {
    imports =[
      ./user.nix
      ./sys.nix
      ./desktop
      ./core
    ];
  }
# done
