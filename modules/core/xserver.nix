{ pkgs,primary_user, ... }: {
  services.xserver = {
    enable = true;
    xkb.layout = "us";
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
