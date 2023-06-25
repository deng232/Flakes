{ ... }: {
  xsession.windowManager.i3.config = {
    modifier = "Mod4";
    bars = [ ];
    defaultWorkspace = "1";
    gaps = {
      inner = 10;
      outer = 0;
    };
    floating = {
      border = 2;
      criteria = [
        { window_role = "pop-up"; }
        { window_role = "bubble"; }
        { window_role = "task_dialog"; }
        { window_role = "Preferences"; }
        { window_type = "dialog"; }
        { window_type = "menu"; }
        #{ class = "kitty"; }
        { class = "Pavucontrol"; }
        { class = "Nemo"; }
        { class = "Lxappearance"; }
      ];
    };
    window = {
      border = 2;
    };
    # colors = {
    #   background = "#" + variables.colors.bg;
    #   focused = {
    #     background = "#" + variables.colors.bg;
    #     border = "#" + variables.colors.acc;
    #     childBorder = "#" + variables.colors.acc;
    #     indicator = "#" + variables.colors.acc;
    #     text = "#" + variables.colors.fg;
    #   };
    # };
    fonts = {
      names = [ "Jetbrainsmono nerd font" ];
      size = 10 * 1.0;
    };
  };
}
