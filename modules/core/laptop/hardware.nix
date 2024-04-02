{config, pkgs, ... }: {
  # hardware.video.hidpi.enable = true;
  hardware.opengl.enable = true;
  hardware.opengl.driSupport = true;
  hardware.opengl.driSupport32Bit = true;
  hardware.opengl.extraPackages = with pkgs; [
    amdvlk
  ];
  powerManagement.cpuFreqGovernor = "performance";
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
  
