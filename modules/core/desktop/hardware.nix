{ config, pkgs, ... }: {
  # hardware.video.hidpi.enable = true;
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };
  services.xserver.videoDrivers = [ "nvidia" ];
  powerManagement.cpuFreqGovernor = "ondemand";
  boot.kernelParams = [ "nvidia.NVreg_PreserveVideoMemoryAllocations=1" ]; # fix suspend/wakeup issue https://wiki.hyprland.org/Nvidia/
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
  environment.systemPackages = with pkgs; [
    nvidia-vaapi-driver # not sure if this is correct install
  ];
}
  
