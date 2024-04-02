{ pkgs, ... }: {
  programs.git.enable = true;
  programs.git.userName = "deng232";
  programs.git.userEmail = "deng232@purdue.edu";
  programs.git.extraConfig = {
    credential.helper = "${
      pkgs.git.override {withLibsecret = true;}
    }/bin/git-credential-libsecret";
  };
}
