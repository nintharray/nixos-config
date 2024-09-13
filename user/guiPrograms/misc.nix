{ pkgs, ... }:

{
  home.packages = with pkgs; [
    audacious
    gimp
    obsidian
    vesktop
    xdg-desktop-portal-gtk
    zathura
  ];
}
