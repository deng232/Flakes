{ inputs, ... }: {
  imports =
    [ (import ./waybar) ]
     ++ [ (import ./firefox) ]
    # ++ [ (import ./vscode) ]
    ++ [ (import ./hyprland) ]
    ++ [ (import ./i3) ]
    ++ [ (import ./git) ]
    ++ [ (import ./foot) ]
    ++ [ (import ./swaylock) ]
    ++ [ (import ./wofi) ]
    ++ [ (import ./zsh) ]
    ++ [ (import ./gtk) ]
    ++ [ (import ./mako) ]
    ++ [ (import ./scripts) ]
    ++ [ (import ./neofetch) ]
    ++ [ (import ./starship) ]
    ++ [ (import ./wlogout) ]
    ++ [ (import ./nvim) ]
    ++ [ (import ./package) ];

}
