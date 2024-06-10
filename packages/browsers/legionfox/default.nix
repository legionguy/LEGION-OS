{
  config,
  lib,
  pkgs,
  ...
}:

{
  programs.firefox = {
  package = pkgs.firefox-esr;
  enable = true;
  languagePacks = "en-US";
  };

}