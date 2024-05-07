{ pkgs,primary_user, ... }: {
  
  services = {
    xserver = {
    enable = true;
    xkb.layout = "us";
    #videoDrivers = [ "amdgpu" ];

    libinput = {
      enable = true;
      mouse = {
        accelProfile = "flat";
      };
    };
  };
      displayManager.autoLogin = {
      enable = true;
      user = primary_user.name;
    };
  };
}
