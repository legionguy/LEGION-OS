{
  config,
  lib,
  pkgs,
  ...
}:

let
  home-manager = import <home-manager/nixos> { ... };
  in
{
  imports = [
    /etc/nixos/hardware.nix
    /etc/nixos/browser.nix
    /etc/nixos/dm.nix
    /etc/nixos/editor.nix
    /etc/nixos/services.nix
    /etc/nixos/sound.nix
    /etc/nixos/system.nix
    /etc/nixos/virtualization.nix
    /etc/nixos/desktop.nix
    home-manager
  ];

  users = {
    mutableUsers = false;
    users.batman = {
      shell = pkgs.zsh;
      isNormalUser = true;
      hashedPassword = "7e9056a513d10cc9962503a342e19521e5379c8b77a7a57a5270a68d2c0240c6f1f84fbde8bc4e4285baa9c3ba3f1fc5e359d51ba24581a446891c76c0d124b1";
      extraGroups = [ "vboxusers" "networkmanager" "wheel" "video" "libvirtd" "vboxusers" ];
    };
    extraUsers = {
       root = {
         hashedPassword = "de01f8e7f9b63328f4780da37813355cd272b9e210d25d555eae55fefe72148502b05e95f5d691a3b3531746f80c027bced9cef7b24c6153190678dac6cb17e3";
       };
     };
  };

  nix.gc.dates = "weekly";
  nix.gc.automatic = true;

  time.timeZone = "Asia/Kolkata";

  system.stateVersion = "24.04";

}

