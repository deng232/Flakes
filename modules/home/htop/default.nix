{...}:{
  programs.htop = {
    enable = true;
    # just use the auto generationed, instead of using setting

  };
   xdg.configFile."htop/htoprc".source = "./htoprc"
}