{ pkgs, primary_user, ... }: {

  services = {
    libinput = {
      enable = true;
      mouse = {
        accelProfile = "flat";
      };
    };
    xserver = {
      enable = true;
      xkb.layout = "us";

    };
    

    displayManager = {
      sddm.enable = true;
      autoLogin = {
      enable = true;
      user = primary_user.name;
    };
    };
    
    
  };
}
