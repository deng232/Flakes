
{ hostname,primary_user, ... }:
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
  users.users.${primary_user.name} = primary_user;
}