{ lib, ... }: {
  xsession.windowManager.i3.config.modifier = "Mod4";
  xsession.windowManager.i3.config.keybindings =
    lib.mkOptionDefault {
      "Mod4 + Enter" = "exec kitty";
    };
}
