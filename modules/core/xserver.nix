{ pkgs, ... }: {
  services.xserver = {
    enable = true;
    layout = "us";
    videoDrivers = [ "amdgpu" ];
    displayManager.gdm = {
      enable = true;
      wayland = true;
      autoLogin = { enable = true; user = "fahim"; };
    };
    libinput = {
      enable = true;
      mouse = {
        accelProfile = "flat";
      };
    };
  };
}
