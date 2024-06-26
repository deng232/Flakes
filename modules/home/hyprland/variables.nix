{ ... }:

{
  home.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    __GL_GSYNC_ALLOWED = "0";
    __GL_VRR_ALLOWED = "0";
    _JAVA_AWT_WM_NONEREPARENTING = "1";
    SSH_AUTH_SOCK = "/run/user/1000/keyring/ssh";
    DISABLE_QT5_COMPAT = "0";
    GDK_BACKEND = "wayland";
    ANKI_WAYLAND = "1";
    DIRENV_LOG_FORMAT = "";
    WLR_DRM_NO_ATOMIC = "1";
    QT_AUTO_SCREEN_SCALE_FACTOR = "1";
    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
    QT_QPA_PLATFORM = "xcb";
    QT_QPA_PLATFORMTHEME = "qt5ct";
    QT_STYLE_OVERRIDE = "kvantum";
    MOZ_ENABLE_WAYLAND = "1";
    WLR_BACKEND = "vulkan";
    WLR_RENDERER = "vulkan";
    WLR_NO_HARDWARE_CURSORS = "1";
    XDG_SESSION_TYPE = "wayland";
    SDL_VIDEODRIVER = "wayland";
    CLUTTER_BACKEND = "wayland";
    GTK_THEME = "matrix-gtk";

    NVD_BACKEND = "direct"; #for accelerate video render, not sure it working or not

    GTK_IM_MODULE = "fcitx"; 
    QT_IM_MODULE = "fcitx";
    #ELECTRON_OZONE_PLATFORM_HINT = "auto"
    #GDK_SCALE = "2";
    #XCURSOR_SIZE = "32";
    #LIBVA_DRIVER_NAME="nvidia"; not sure these are needed
    #GBM_BACKEND ="nvidia-drm";
    #__GLX_VENDOR_LIBRARY_NAME="nvidia";
  };
}
