{
  inputs,
  nixpkgs,
  self,
  ...
}: let
  system = "x86_64-linux";
  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };
  lib = nixpkgs.lib;
in {
  nixos = nixpkgs.lib.nixosSystem {
    specialArgs = {inherit self inputs;};
    modules =
    [(import ./bootloader.nix)]
    ++ [(import ./wayland.nix)]
    ++ [(import ./user.nix)]
    ++ [(import ./security.nix)]
    ++ [(import ./programs.nix)]
    ++ [(import ./system.nix)];
  };
}