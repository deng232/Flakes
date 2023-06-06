{ pkgs, ... }: {
  programs.waybar = {
    enable = true;
    systemd = {
      enable = false;
      target = "graphical-session.target";
    };
    style = ''
      * {
          font-family: JetBrainsMono Nerd Font;
          font-weight: normal;
          font-size: 14px;
          min-height: 0;
          transition-property: background-color;
          transition-duration: 0.5s;
      }

      window#waybar {
          background-color: transparent;
      }

      window>box {
          margin-left: 10px;
          margin-right: 10px;
          margin-top: 8px;
          border: 2px solid #595959;
          border-radius: 0px;
          background-color: rgba(31, 31, 31, 0.9);
      }

      #workspaces {
          padding-left: 0px;
          padding-right: 4px;
          border-radius: 0px;
      }

      #workspaces button {
          padding-top: 5px;
          border-radius: 0px;
          padding-bottom: 5px;
          padding-left: 8px;
          padding-right: 8px;
      }

      #workspaces button.active {
          background-color: #595959;
          color: rgb(23, 23, 23);
      }

      #workspaces button.urgent {
          color: #fff000;
      }

      tooltip {
          background: rgb(48, 45, 65);
      }

      tooltip label {
          color: rgb(217, 224, 238);
      }

      #custom-launcher {
          font-size: 16px;
          padding-left: 10px;
          padding-right: 6px;
          color: #6896BA;
      }

      #clock,
      #memory,
      #temperature,
      #cpu,
      #mpd,
      #custom-wall,
      #temperature,
      #backlight,
      #pulseaudio,
      #network,
      #battery,
      #disk,
      #idle_inhibitor {
          padding-left: 10px;
          padding-right: 10px;
          padding-top: 0px;
          padding-bottom: 0px;
          color: #B9B9B9;
      }
      #cava {
        padding-left: 10px;
        padding-right: 10px;
      }
      #tray {
          padding-right: 8px;
          padding-left: 10px;
      }
    '';
    settings = [
      {
        "layer" = "top";
        "position" = "top";
        modules-left = [
          "custom/launcher"
          "wlr/workspaces"
          "temperature"
          "idle_inhibitor"
        ];
        modules-center = [
          "clock"
        ];
        modules-right = [
          "pulseaudio"
          "pulseaudio#microphone"
          "memory"
          "cpu"
          "disk"
          # "keyboard-state"
          "network"
          "cava"
          "tray"
        ];
        "custom/launcher" = {
          "format" = " ";
          "on-click" = "pkill wofi || wofi";
          "tooltip" = false;
        };
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
        "wlr/workspaces" = {
          "format" = "{icon}";
          "on-click" = "activate";
        };
        "pulseaudio" = {
          "scroll-step" = 5;
          "format" = "{icon} {volume}%";
          "format-muted" = "󰸈 Muted";
          "format-icons" = {
            "default" = [ "" "" "󱄠" ];
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
          "format-alt" = "  {bandwidthUpBytes}    {bandwidthDownBytes}";
          "format-disconnected" = "󰣼 Disconnected";
          "tooltip" = false;
        };
        "temperature" = {
          "tooltip" = false;
          "thermal-zone" = 2;
          "hwmon-path" = "/sys/class/hwmon/hwmon2/temp1_input";
          "format" = " {temperatureC}°C";
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
          "format-icons" = [ "▁" "▂" "▃" "▄" "▅" "▆" "▇" "█" ];
          "on-click-right" = "playerctl play-pause";
        };
        "tray" = {
          "icon-size" = 12;
          "spacing" = 5;
        };
      }
    ];
  };
  programs.waybar.package = pkgs.waybar.overrideAttrs (oa: {
    mesonFlags = (oa.mesonFlags or [ ]) ++ [ "-Dexperimental=true" ];
  });
}
