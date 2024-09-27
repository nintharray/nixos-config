{ pkgs, ... }:

{
  home.packages = with pkgs; [
    audacious
    filelight
    gimp
    obs-studio
    obsidian
    postman
    vesktop
    xdg-desktop-portal-gtk
    zathura
  ];
}
