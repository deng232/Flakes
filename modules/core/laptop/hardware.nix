{config, pkgs, ... }: {
  # hardware.video.hidpi.enable = true;
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };
  powerManagement.cpuFreqGovernor = "ondemand";
  hardware.nvidia = {
    prime = {
      offload.enable = true;
      offload.enableOffloadCmd = true;
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";
    };

    modesetting.enable = true;
  powerManagement = {
    enable = true;
    finegrained = true;
  };
  package = config.boot.kerelPackages.nvidiaPackages.stable;
  open = false;
  nvidiaSettings = true;
   };
  }
  
