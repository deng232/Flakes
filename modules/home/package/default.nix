{ inputs
, pkgs
, ...
}: {
  home.packages =
    (with pkgs;
    [
      # programming
      python313
      nodejs
      typescript
      ripgrep
      rustup
      #vscode

      # others
      openssl
      libnotify # A library that sends desktop notifications to a notification daemon
      pamixer #Pulseaudio command line mixer
      xfce.thunar # Xfce file manager
      pavucontrol # PulseAudio Volume Control
      wget
      unzip
      gparted
      mpv # General-purpose media player, fork of MPlayer and mplayer2
      playerctl #Command-line utility and library for controlling media players that implement MPRIS
      bleachbit # A program to clean your computer
      imv #A command line image viewer for tiling window managers

 
      btop # A monitor of resourecs, don't know if gpu really work
      nvtopPackages.full # gpu monitor
      #pkgs.kdePackages.plasma-systemmonitor don't work

      #xdg-utils
      fzf #fuzzy finder
      ffmpeg
      discord
      eza #ls replacement
      inputs.alejandra.defaultPackage.${system}
      libsecret #gnume secrete storage
      #gameing?
      #proton-ge-bin
    ]);
}
