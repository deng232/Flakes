{ pkgs, lib, ... }:
{
  xsession.enable = true;
  xsession.windowManager.i3 = {
    fonts = [ "JetbrainsMono nerd font, FontAwesome 6" ];
    enable = true;
    package = pkgs.i3-gaps;
  };
}
