{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    kitty
    dmenu
    i3status
    feh 
  ];

  xsession.windowManager.i3 = {
    enable = true;
    config = {
      modifier = "Mod4";
      gaps = {
        inner = 4;
        outer = 2;
      };
      window = {
        border = 0;
        titlebar = false;
      };
    };
  };

  #startx dbus fix
  home.file.".xinitrc".text = ''
  if test -z "$DBUS_SESSION_BUS_ADDRESS"; then
    eval $(dbus-launch --exit-with-session --sh-syntax)
  fi
  systemctl --user import-environment DISPLAY XAUTHORITY

  if command -v dbus-update-activation-environment >/dev/null 2>&1; then
    dbus-update-activation-environment DISPLAY XAUTHORITY
  fi
  '';
}
