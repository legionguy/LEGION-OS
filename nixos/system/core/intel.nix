{
  config,
  pkgs,
  lib,
  ...
  }:
  
  {
    hardware = {
      cpu.intel.updateMicrocode = true;
      intel-gpu-tools.enable = true;
      opengl.enable = true;
      opengl.driSupport = true;
      # later - hardware.opengl.extraPackages = [];
      };
  }
# done