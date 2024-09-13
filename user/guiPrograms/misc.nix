{ pkgs, ... }:

{
  home.packages = with pkgs; [
    audacious
    gimp
    vesktop
    xdg-desktop-portal-gtk
    zathura
  ];
}
