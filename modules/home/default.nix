{ inputs, ... }:
{
  imports = [
    ./waybar
    ./firefox
    ./vscode
    ./chromium
    ./hyprland
     # ./gaming
    ./git
    ./foot
    ./swaylock
    ./rofi
    ./zsh
    ./gtk
    ./mako
    ./scripts
    ./neofetch
    ./starship
    ./wlogout
    ./nvim
    ./package
    ./fonts

  ];
  xdg.configFile."electron-flags.conf".text = "--enable-features=UseOzonePlatform
--ozone-platform=wayland"; # fix electron app scale problem
}