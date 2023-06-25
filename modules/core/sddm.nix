{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    libsForQt5.qt5.qtgraphicaleffects
    libsForQt5.qt5.qtquickcontrols2
  ];
  services.xserver.displayManager.sddm = {
    enable = true;
    theme = "${(pkgs.fetchFromGitHub {
        owner = "Keyitdev";
        repo = "sddm-flower-theme";
        rev = "5981c873c203136b59da9ed941139abea1aaa02b";
        sha256 = "6jkKYBQF385k9mexenFsDUfMv2Ig7M3RRdTTIOZuX2s=";
      })}";
  };
}
