
{ hostname, ... }:
{
  imports = [
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
    ./wayland.nix
    ./cloudflare-warp.nix
    (./. + "/${hostname}")
  ];
}