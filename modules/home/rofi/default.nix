{pkgs,...}:{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;

    configPath = (./. + "/config.rasi");
    theme = builtins.path {path = ./. + "/theme"; recursive=true; };
  };

}    #configPath = builtins.path { path = ./. + "/config.rasi";};
  #xdg.configFile."rofi".source =