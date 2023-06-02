{
  description = "Fahim's simple nixos configuration";
  inputs = {
    hyprland.url = "github:hyprwm/Hyprland";
  };
  outputs = {
    nixpkgs,
    self,
    ...
  }@inputs: {
    nixosConfigurations = import ./modules/core/default.nix {
      inherit self nixpkgs inputs;
    };
  };
}