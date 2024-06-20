{
  config,
  pkgs,
  lib,
  ...
  }:

  {
    imports =[
      ./boot.nix
      ./intel.nix
      ./kernal.nix
      ./network.nix
      ./partition.nix
      ./locals.nix
    ];
  }
# done
