{ pkgs, ... }:

{
  home.packages = with pkgs; [
    audacious
    filelight
    gimp
    obsidian
    postman
    vesktop
    xdg-desktop-portal-gtk
    zathura
  ];
}
