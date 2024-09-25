{ pkgs, ... }:

{
  home.packages = with pkgs; [
    audacious
    filelight
    gimp
    obsidian
    vesktop
    xdg-desktop-portal-gtk
    zathura
  ];
}
