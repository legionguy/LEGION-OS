{
  config,
  pkgs,
  lib,
  ...
  }:

  {
    imports =[
      ./virtual.nix
      ./manager.nix
      ./git.nix
      ./kitty.nix
      ./neovim.nix
      ./micro.nix
      ./tmux.nix
      ./vscode.nix
      ./zsh.nix
    ];
  }
