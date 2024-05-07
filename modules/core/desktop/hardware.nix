{ config, pkgs, ... }: {
  # hardware.video.hidpi.enable = true;
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };
  services.xserver.videoDrivers = [ "nvidia" ];
  powerManagement.cpuFreqGovernor = "ondemand";
  hardware.nvidia = {


    modesetting.enable = true;
    powerManagement = {
      enable = true;
      #finegrained = true;
    };
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    open = false;
    nvidiaSettings = true;
  };
}
  
