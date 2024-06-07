{
  config,
  lib,
  pkgs,
  ...
  }:

  environment.systemPackages = with pkgs; [
    nmap
    wget2
    curl
    sudo
    uutils-coreutils-noprefix
    btop
    direnv
    android-tools
    zip
    unzip
    busybox
  ];