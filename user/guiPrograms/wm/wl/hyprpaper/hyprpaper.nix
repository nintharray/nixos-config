{ pkgs, config, ... }:

{
  home.packages = with pkgs; [
    hyprpaper
  ];
  xdg.configFile."hypr/hyprpaper.conf".text = ''
    preload=${config.xdg.userDirs.pictures}/wallpapers/custom/4811.png
    wallpaper=,${config.xdg.userDirs.pictures}/wallpapers/custom/4811.png
    ipc=off
  '';
}
