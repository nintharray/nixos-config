{ pkgs, ... }:

{
  home.packages = with pkgs; [
    audacious
    gimp
    xdg-desktop-portal-gtk
    zathura
  ];
}
