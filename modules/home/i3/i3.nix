{ pkgs, lib, ... }:
{
  home.packages = with pkgs; [
    kitty
  ];
  xsession.enable = true;
  xsession.windowManager.i3 = {
    config.fonts = [ "JetbrainsMono nerd font" ];
    enable = true;
    package = pkgs.i3-gaps;
  };
}
