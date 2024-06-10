# browsers-options.nix
{
  lib,
  pkgs,
  config,
  ... }:

with lib;

{
  options = {
    users.users.<name>.browsers = mkOption {
      type = types.listOf types.str;
      default = [];
      description = "List of browsers to install for the user.";
    };
  };

  config = {
    users.users = mkMerge (mapAttrsToList (userName: userConfig: {
      environment.systemPackages = mkIf (userConfig.browsers != []) (
        map (browser: pkgs.${browser}) userConfig.browsers
      );
    }) config.users.users);
  };
}
