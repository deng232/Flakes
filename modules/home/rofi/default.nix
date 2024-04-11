{pkgs,...}:{

xdg.configFile."rofi/config.rasi".source = ./config.rasi;
#xdg.configFile."rofi/theme/style-3.rasi".source = ./theme/style-3.rasi;
#xdg.configFile."rofi/theme/shared/fronts.rasi".source = ./theme/shared/fronts.rasi;
#xdg.configFile."rofi/theme/shared/colors.rasi".source = ./theme/shared/colors.rasi;
xdg.configFile."rofi/theme".source = builtins.path {path = ./theme; recursive = true;};
}
