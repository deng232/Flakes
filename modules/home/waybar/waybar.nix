{ pkgs, ... }: {
  programs.waybar = {
    enable = true;
    systemd = {
      enable = false;
    };
  };
  programs.waybar.package = pkgs.waybar.overrideAttrs (oa: {
    mesonFlags = (oa.mesonFlags or [ ]) ++ [ "-Dexperimental=true" ];
  });
}
