{
  config,
  pkgs,
  lib,
  ...
  }:
  
  {
    environment.systemPackages = with pkgs; [

    ];
  }
# goona put sys package here from legionpkgs