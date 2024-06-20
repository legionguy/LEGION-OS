{
  config,
  pkgs,
  lib,
  ...
  }:
  let
  everythingTools = import ../profiles/everything.nix { inherit pkgs; };
  in
  {
    users = {
      mutableUsers = true;
      
      #extraUsers = {
       #root = {
        # hashedPassword = "$y$j9T$Fqi7wpVwdFTwzPWn/dC0S.$q3kEB53sHZl6uKU.Appvny6tNz6ln/mMo6PaDZWtBu/";
       #};
     #};

      users.batman = {
        shell = pkgs.zsh;
        name = "BATMAN";
        isNormalUser = true;
        hashedPassword = "$y$j9T$dXRrvumMHIh76Rodq7tC91$Da46Tq1768f59X.plBt9TU8zbH/1u5D6.T.tk0Xl8N6";
        description = "BATMAN";
        createHome = true;
        extraGroups = [
          "networkmanager"
          "wheel"
          ];
      
        packages = [
          everythingTools
          # goona put a pkg from profiles
        ];
      
        };
          };
    
  }
# user not done use mutable user = false after seeing the passwd working 
