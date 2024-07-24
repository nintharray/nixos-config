{ pkgs, ... }:

{
  programs.hyprlock = {
    enable = true;
  };
  home.file.".config/hypr/hyprlock.conf".text = ''
        source=/tmp/.current_wallpaper_path_hyprlock
        background {
            monitor =
            path = screenshot
            blur_passes = 3
            contrast = 0.9
            brightness = 0.8
            vibrancy = 0.2
            vibrancy_darkness = 0.0
        }
  
        general {
            hide_cursor = true
        }
  
        input-field {
            monitor =
            size = 250, 60
            outline_thickness = 2
            dots_size = 0.2 # Scale of input-field height, 0.2 - 0.8
            dots_spacing = 0.2 # Scale of dots' absolute size, 0.0 - 1.0
            dots_center = true
            outer_color = rgba(0, 0, 0, 0)
            inner_color = rgb(40, 40, 40)
            font_color = rgb(235, 219, 178)
            fade_on_empty = false
            font_family = Monospace
            placeholder_text = <i><span foreground="##bdae9399">  Password:</span></i>
            hide_input = false
            position = 0, -100
            halign = center
            valign = center
        }
  
        label {
            monitor =
            text = cmd[update:1000] echo -e "$(date +"%H:%M")"
            color = rgb(235, 219, 178)
            font_size = 90
            font_family = Monospace
            position = 0, 275
            halign = center
            valign = center
        }
  
        label {
            monitor =
            text = Good day, <span foreground="##83a59899">  $USER</span>
            color = rgb(235, 219, 178)
            font_size = 14
            font_family = Monospace
            position = 0, -25
            halign = center
            valign = center
        }
  
        image {
            monitor = 
            position = 0, 100
            size=150
            border_color=rgb(235, 219, 178)
            border_size=2
            halign=center
            path=/home/n8/media/images/hyprlock_pfp.png
            rounding=-1
            valign=center
        }
    '';
}
