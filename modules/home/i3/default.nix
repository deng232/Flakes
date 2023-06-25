{ ... }: {
  imports = [ (import ./i3.nix) ]
    ++ [ (import ./keybindings.nix) ];
}
