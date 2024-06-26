{ ... }:
{

  programs.waybar.settings = [
    {
      "layer" = "top";
      "position" = "top";
      modules-left = [
        "hyprland/workspaces"
        "temperature"
        #"idle_inhibitor" dont know what it is
      ];
      modules-center = [ "clock" ];
      modules-right = [
        "pulseaudio"
        "pulseaudio#microphone"
        "memory"
        "cpu"
        "network"
        "battery"
        "cava" # an audio visualizer, dont' kow it work or not
        "tray" # don't know what it is
      ];
      "idle_inhibitor" = {
        "format" = "{icon}";
        "format-icons" = {
          "activated" = "";
          "deactivated" = "";
        };
      };
      "disk" = {
        "path" = "/home";
        "format" = "󰋊 {percentage_used}%";
      };
      "custom/wall" = {
        "on-click" = "wallpaper_random";
        "on-click-middle" = "default_wall";
        "on-click-right" = "killall dynamic_wallpaper || dynamic_wallpaper &";
        "format" = " ﴔ ";
        "tooltip" = false;
      };
      "hyprland/workspaces" = {
        "format" = "{icon}";
        "on-click" = "activate";
      };
      "pulseaudio" = {
        "scroll-step" = 5;
        "format" = "{icon} {volume}%";
        "format-muted" = "󰸈 Muted";
        "format-icons" = {
          "default" = [
            ""
            ""
            "󱄠"
          ];
        };
        "on-click" = "pamixer -t";
        "on-click-right" = "pavucontrol";
        "on-click-middle" = "$HOME/.local/bin/toggle_sound_output";
        "tooltip" = false;
      };
      "pulseaudio#microphone" = {
        "format" = "{format_source}";
        "format-source" = "󰍬 {volume}%";
        "format-source-muted" = "󰍭 Muted";
        "on-click" = "pamixer --default-source -t";
        "on-scroll-up" = "pamixer --default-source -i 5";
        "on-scroll-down" = "pamixer --default-source -d 5";
        "scroll-step" = 5;
        "on-click-right" = "pavucontrol";
      };
      "clock" = {
        "interval" = 1;
        "format" = "{:%I:%M %p  %A %b %d}";
        "tooltip" = true;
        "tooltip-format" = "<tt>{calendar}</tt>";
      };
      "memory" = {
        "interval" = 1;
        "format" = "󰟜 {percentage}%";
        "states" = {
          "warning" = 85;
        };
      };
      "cpu" = {
        "interval" = 1;
        "format" = "󰇖 {usage}%";
      };
      "network" = {
        "interval" = 1;
        "format" = "󰣺 Connected";
        #"format-alt" = "  {bandwidthUpBytes}    {bandwidthDownBytes}";
        "format-disconnected" = "󰣼 Disconnected";
        "tooltip" = false;
        "on-click" = "foot -e nmtui";
      };
      "temperature" = {
        "thermal-zone" = 2;
        "hwmon-path" = "/sys/class/hwmon/hwmon2/temp1_input";
      };
      "cava" = {
        "framerate" = 60;
        "autosens" = 1;
        "sensitivity" = 10;
        "bars" = 6;
        "lower_cutoff_freq" = 50;
        "higher_cutoff_freq" = 10000;
        "method" = "pulse";
        "source" = "auto";
        "stereo" = true;
        "reverse" = false;
        "bar_delimiter" = 0;
        "monstercat" = false;
        "waves" = false;
        "noise_reduction" = 0.77;
        "input_delay" = 2;
        "format-icons" = [
          "▁"
          "▂"
          "▃"
          "▄"
          "▅"
          "▆"
          "▇"
          "█"
        ];
        "on-click-right" = "playerctl play-pause";
      };
      "tray" = {
        "icon-size" = 12;
        "spacing" = 5;
      };

      "battery" = {
        "format" = "<span font='Font Awesome 5 Free 11'>{icon}</span>  {capacity}% - {time}";
        "format-icons" = [ "" "" "" "" "" ];
        "format-time" = "{H}h{M}m";
        "format-charging" = "<span font='Font Awesome 5 Free'></span>  <span font='Font Awesome 5 Free 11'>{icon}</span>  {capacity}% - {time}";
        "format-full" = "<span font='Font Awesome 5 Free'></span>  <span font='Font Awesome 5 Free 11'>{icon}</span>  Charged";
        "interval" = 30;
        "states" = {
          "warning" = 25;
          "critical" = 10;
        };
        "tooltip" = false;
        "on-click" = "2";
          };
      }
        ];
    }
