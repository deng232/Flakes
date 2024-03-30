{ inputs
, nixpkgs
, self
,
username, email, initialPassword
, ...
}:
let
  system = "x86_64-linux";
  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };
  lib = nixpkgs.lib;
in
{
  nixos = nixpkgs.lib.nixosSystem {
    specialArgs = { inherit self inputs username email initialPassword; };
    modules =
      [  ./bootloader.nix
       ./hardware.nix
       ./xserver.nix
      ./steam.nix
      ./network.nix
       ./pipewire.nix
     ./program.nix
   ./../home/package/python.nix
    ./security.nix
     ./services.nix
       ./system.nix
       ./user.nix
     ./wayland.nix
       ./cloudflare-warp.nix
       ./virtualization.nix
       ./../../hosts/nixos/hardware-configuration.nix
      ];
  };
}
