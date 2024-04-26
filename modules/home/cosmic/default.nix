{ inputs
, pkgs
, ...
}:
{
home.packages =
    (with pkgs;
    [
        cosmic-bg
        cosmic-osd
        cosmic-comp
        cosmic-store
        cosmic-randr
        cosmic-panel
        cosmic-icons
        cosmic-session
        cosmic-greeter
        cosmic-applets
        cosmic-settings
        cosmic-launcher
        cosmic-protocols
        cosmic-screenshot
        cosmic-applibrary
        cosmic-design-demo
        cosmic-notifications
        cosmic-settings-daemon
        cosmic-workspaces-epoch
    ]);
}