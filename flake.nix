{
  description = "Fahim's nixos configuration";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nur.url = "github:nix-community/NUR";
    hypr-contrib.url = "github:hyprwm/contrib";
    hyprpicker.url = "github:hyprwm/hyprpicker";
    alejandra.url = "github:kamadorueda/alejandra/3.0.0";
    nix-gaming.url = "github:fufexan/nix-gaming";
    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs
    , self
    , ...
    } @ inputs:
    let
      selfPkgs = import ./pkgs;
        name = "Samiul Basir Fahim";
        username = "deng";
        email = "deng232@purdue.edu";
        initialPassword = "dreamX";
    in
    {
      overlays.default = selfPkgs.overlay;
      nixosConfigurations = import ./modules/core/default.nix {
         inherit self nixpkgs inputs username email initialPassword;
      };
    };
}
