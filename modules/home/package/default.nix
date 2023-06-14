{ inputs
, pkgs
, ...
}: {
  imports = [ (import ./firefox) ];

  home.packages =
    let
      php = pkgs.php.buildEnv { extraConfig = "memory_limit = 2G"; };
    in
    (with pkgs;
    [
      # programming
      python39
      nodejs
      nodePackages.nodemon
      yarn
      nix-prefetch-github
      vscode
      typescript
      rnix-lsp
      ripgrep
      rustup
      php
      gh

      # others
      openssl
      libnotify
      pamixer
      xfce.thunar
      pavucontrol
      wget
      unzip
      gparted
      mpv
      playerctl
      qalculate-gtk
      bleachbit
      imv
      htop
      xdg-utils
      fzf
      ffmpeg
      bore-cli
      webcord
      exa
      inputs.alejandra.defaultPackage.${system}
    ]
    ++ [

    ]);
}
