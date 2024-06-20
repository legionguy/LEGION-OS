{
  config,
  pkgs,
  lib,
  ...
  }:

  {
    programs.tmux = {
      enable = true;
      # later - plugins = [];
      historyLimit = 3000;

      };
  }