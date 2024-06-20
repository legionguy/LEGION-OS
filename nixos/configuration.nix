{
  config,
  pkgs,
  lib,
  ...
  }:

  {
    imports =[
      ./system
      ./programs
    ];

    system = {
      stateVersion = "24.05";
      name = "LEGION-OS";
      };
# dont really required but did it because accidents can happen
    nix = {
      enable = true;
      gc = {
        persistent = true;
        dates = "weekly";
        automatic = true;
        };

      settings = {
        auto-optimise-store = true;
        require-sigs = true;
        sandbox = true;
        };
      
      optimise = {
        automatic = true;
        };
      };
    nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
    nixpkgs.config.allowUnfree = true;
    
          
  }

# done
