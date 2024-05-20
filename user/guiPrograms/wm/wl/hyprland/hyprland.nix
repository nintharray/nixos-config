{ pkgs, lib, ... }:

{
  imports = [
    ../waybar/waybar.nix
    ../../gtk-qt.nix
  ];

  home.packages = with pkgs; [
    paprefs
    pasystray
    pavucontrol
    playerctl
    pulsemixer
    brightnessctl
    loupe
    grim
    grimblast
    libnotify
    wl-clipboard
    wofi
    xwaylandvideobridge
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mod" = "SUPER";
      "$terminal" = "kitty";
      bind = [
        "$mod, D, exec, wofi --show run"
        # ", Print, exec, grimblast copy area"
        "$mod, Return, exec, $terminal"
        "$mod SHIFT, E, exit"
        "$mod SHIFT, Q, killactive"

        "$mod, h, movefocus, l"
        "$mod, j, movefocus, d"
        "$mod, k, movefocus, u"
        "$mod, l, movefocus, r"

        "$mod SHIFT, h, movewindow, l"
        "$mod SHIFT, j, movewindow, d"
        "$mod SHIFT, k, movewindow, u"
        "$mod SHIFT, l, movewindow, r"
      ]
        ++ (
          # workspaces
          # binds $mod + [shift +] {1..10} to [move to] workspace {1..10}
          builtins.concatLists (builtins.genList (
              x: let
                ws = let
                  c = (x + 1) / 10;
                in
                  builtins.toString (x + 1 - (c * 10));
              in [
                "$mod, ${ws}, workspace, ${toString (x + 1)}"
                "$mod SHIFT, ${ws}, movetoworkspace, ${toString (x + 1)}"
              ]
            )
            10)
        );
      bindm = [
        # window control with left click
        "$mod, mouse:272, movewindow"
        "$mod SHIFT, mouse:272, resizewindow"
      ];
      general = {
        gaps_in = 5;
        gaps_out = 10;
      };
      decoration = {
        drop_shadow = false;
        blur.enabled = false;
        rounding = 10;
      };
      monitor = [
        ",preferred,auto,1"
      ];
      misc = {
        disable_splash_rendering = true;
        force_default_wallpaper = 0;
        vfr = true;
      };
    };
    extraConfig = ''
      exec-once=${pkgs.waybar}/bin/waybar
    '';
  };
}
