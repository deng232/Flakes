{ lib, ... }: {
  xsession.windowManager.i3.keybindings =
    lib.mkOptionDefault {
      "Mod4 + Enter" = "exec kitty";
    };
}
