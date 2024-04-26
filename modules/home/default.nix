{ inputs, ... }:
{
  imports = [
    ./firefox
    ./vscode
    ./chromium
    ./git
    ./foot
    ./swaylock
    ./rofi
    ./zsh
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