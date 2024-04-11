{pkgs,...}:{
    fonts.fontconfig.enable = true;
  home.packages = [
    pkgs.twemoji-color-font
    pkgs.noto-fonts
    pkgs.noto-fonts-cjk
    pkgs.noto-fonts-emoji
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ];
}