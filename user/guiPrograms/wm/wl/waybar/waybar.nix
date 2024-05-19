{ ... }:

{
  # status bar for hyprland/wayland
  programs.waybar = {
    enable = true;
    settings = [
      {
        position = "top";
        include = [ "${./shared.json}" ];
        modules-left = [
          "hyprland/workspaces"
          "custom/right-arrow-dark"
        ];
        modules-center = [
          "custom/left-arrow-dark"
          "clock#3"
          "custom/left-arrow-light"
          "custom/left-arrow-dark"
          "tray"
          "custom/right-arrow-dark"
          "custom/right-arrow-light"
          "clock#2"
          "custom/right-arrow-dark"
        ];
        modules-right = [
          "custom/left-arrow-dark"
          "pulseaudio"
          "custom/left-arrow-light"
          "custom/left-arrow-dark"
          "memory"
          "custom/left-arrow-light"
          "custom/left-arrow-dark"
          "cpu"
          "custom/left-arrow-light"
          "custom/left-arrow-dark"
          "battery"
          "custom/left-arrow-light"
          "custom/left-arrow-dark"
          "disk"
          "custom/left-arrow-light"
          "custom/left-arrow-dark"
        ];
      }
      {
        position = "bottom";
        include = [ "${./shared.json}" ];
        modules-left = [
          "custom/right-arrow-dark"
          "custom/right-arrow-light"
          "group/group-power"
          "custom/mpris"
          "custom/right-arrow-dark"
        ];
        modules-center = [
          "custom/left-arrow-dark"
          "hyprland/window"
          "custom/right-arrow-dark"
        ];
        modules-right = [
          "custom/left-arrow-dark"
          "network"
          "custom/left-arrow-light"
          "custom/left-arrow-dark"
        ];
      }
    ];
    style = builtins.readFile ./style.css;
  };
}
