{pkgs,...}:{
  programs.rofi = {
    enable = true;
    configPath = "./rofi/files/launchers/type-3/style-3.rasi";
    package = pkgs.rofi-wayland;
  };
}