{ pkgs, ... }: {
  programs.git.enable = true;
  programs.git.userName = "deng232";
  programs.git.userEmail = "deng232@purdue.edu";
  home.packages = [ pkgs.gh ];
}
