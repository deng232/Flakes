{ pkgs,primary_user, ... }: {
  services.xserver = {
    enable = true;
    xkb.layout = "us";
    #videoDrivers = [ "amdgpu" ];
    displayManager.autoLogin = {
      enable = true;
      user = primary_user.name;
    };
    libinput = {
      enable = true;
      mouse = {
        accelProfile = "flat";
      };
    };
  };
}
