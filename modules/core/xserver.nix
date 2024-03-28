{ pkgs,username, ... }: {
  services.xserver = {
    enable = true;
    xkb.layout = "us";
    #videoDrivers = [ "amdgpu" ];
    displayManager.autoLogin = {
      enable = true;
      user = username;
    };
    libinput = {
      enable = true;
      mouse = {
        accelProfile = "flat";
      };
    };
  };
}
