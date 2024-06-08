{
  config,
  lib,
  pkgs,
  ...
}:

{
  programs = {
    neovim.enable = true;
    tmux.enable = true;

    zsh = {
      syntaxHighlighting.highlighters = ["main"];
      enableCompletion = true;
      autosuggestions.enable = true;
      enable = true;
      syntaxHighlighting.enable = true;
      autosuggestions.strategy = ["history"];
      histSize = 3000;
      enableLsColors = true;
      enableBashCompletion = true;
    };
  };
}
  
  
