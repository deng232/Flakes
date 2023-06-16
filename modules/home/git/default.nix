{ pkgs, ... }: {
  programs.git.enable = true;
  programs.git.userName = "Samiul Basir Fahim";
  programs.git.userEmail = "samiulbasirfahim360@gmail.com";
  home.packages = [ pkgs.gh ];
}
