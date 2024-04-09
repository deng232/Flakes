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

  ];
  xdg.configHome = ./. + "/.config";
}