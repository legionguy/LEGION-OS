{
  config,
  pkgs,
  lib,
  ...
  }:
  
  {
    networking = {
      hostName = "LEGION-OS";
      networkmanager = {
        plugins = [
          pkgs.networkmanager-vpnc
          pkgs.networkmanager-sstp
          pkgs.networkmanager-l2tp
          pkgs.networkmanager-iodine
          pkgs.networkmanager-openvpn
          pkgs.networkmanager_strongswan
          pkgs.networkmanager-openconnect
          pkgs.networkmanager-fortisslvpn
        ];
        enable = true;
        dhcp = "dhcpcd";
        dns = "default";

        wifi = {
          powersave = true;
          macAddress = "preserve";
          backend = "wpa_supplicant";
          };
          };
          };

    hardware.bluetooth = {
      enable = true;
      };
    services.vnstat.enable = true;
  }
# done
