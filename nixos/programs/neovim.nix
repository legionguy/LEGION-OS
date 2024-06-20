{
  config,
  pkgs,
  lib,
  ...
  }:

  {
    programs.neovim = {
      defaultEditor = true;
      enable = true;
      package = pkgs.neovim-unwrapped;
      };
  }
# more later