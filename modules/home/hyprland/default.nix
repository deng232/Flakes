{ ... }: {
  imports = [ (import ./hyprland.nix) ]
    # ++ [ (import ./variables.nix) ]
    ++ [ (import ./variables.nix) ];
}
