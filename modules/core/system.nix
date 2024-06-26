{ self
, pkgs
, lib
, inputs
, ...
}: {
  #imports = [ inputs.nix-gaming.nixosModules.pipewireLowLatency ];
  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [ "nix-command" "flakes" ];
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };
  /*
  nixpkgs = {
    overlays = [
      self.overlays.default
      inputs.nur.overlay
    ];
  };
*/
  environment.systemPackages = with pkgs; [
    wget
    git
    qemu
  ];

  time.timeZone = "America/Indianapolis";
  i18n.defaultLocale = "en_US.UTF-8";
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "23.05";
}
