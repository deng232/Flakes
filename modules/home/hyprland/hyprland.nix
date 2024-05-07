{ inputs
, pkgs
, ...
}: {
  home.packages = with pkgs; [
    swww #wallpaper
    inputs.hypr-contrib.packages.${pkgs.system}.grimblast
    hyprpicker
    wlogout
    grim
    slurp
    wl-clipboard
    cliphist
    wf-recorder
    glib
    wayland
    direnv

  ];
  systemd.user.targets.hyprland-session.Unit.Wants = [ "xdg-desktop-autostart.target" ];
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland = {
      enable = true;
    };
    #enableNvidiaPatches = false;
    systemd.enable = true;
  };

   wayland.windowManager.hyprland.settings = {
    input = {
      kb_layout = "us";
      follow_mouse = 1;
       touchpad = {
          natural_scroll = true;
          disable_while_typing = true;
          drag_lock = true;
        };
        sensitivity = 0;
        float_switch_override_focus = 2;#???
    };

      binds = {
        allow_workspace_cycles = true;
      };

      dwindle = {
        no_gaps_when_only = 1;
        special_scale_factor = 0.8;
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        no_gaps_when_only = 1;
      };

      decoration = {
        active_opacity = 0.8500;
        inactive_opacity = 0.76;
        drop_shadow = false;
        dim_inactive =true;
       # blur = {
       #   enabled = true;
       #     size = 2;
       #     passes = 2;
        #  noise = 0.01;
        #  contrast = 0.9;
        #  brightness = 0.8;
        #  popups = true;

        #};
      };
      animations = {
        enabled = true;
        bezier = "overshot, 0.13, 0.99, 0.29, 1";
        animation = [
           "windows, 1, 4, overshot, slide"
           "windowsOut, 1, 5, default, popin 80%"
           "border, 1, 5, default"
           "fade, 1, 8, default"
           "workspaces, 1, 6, overshot, slidevert"
        ];
      };

       gestures = {
        workspace_swipe = true;
        workspace_swipe_forever = true;
      };

      general = {
        gaps_in = 6;
         gaps_out = 10;
          border_size = 2;
          "col.active_border" = "0x595959ff";
          "col.inactive_border" = "0x00140e10";
          apply_sens_to_raw = 1;
      };

      exec-once = [
        "hyprctl setcursor Catppuccin-Frappe-Dark 16"
        "systemctl --user import-environment &"
        "hash dbus-update-activation-environment 2>/dev/null &"
        "dbus-update-activation-environment --systemd &"
        " swww init && swaylock && notify-send 'Hey $USER, Welcome back' && load-env"
        "wl-paste --type text --watch cliphist store && wl-paste --type image --watch cliphist store && mako &"
      ];
      xwayland = {
        force_zero_scaling = true;
        #use_nearest_neighbor = true;
      };
  };

}
