{
  config,
  pkgs,
  lib,
  ...
  }:

  {
    imports =[
      ./sound.nix
      ./login.nix
      ./hyperland.nix
      ./kde.nix # because used by other people who dont know my keybinds
      ./font.nix
    ];
  }
