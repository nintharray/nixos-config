{ pkgs, ... }:

{
  home.packages = with pkgs; [
    audacious
    gimp
    logseq
    xdg-desktop-portal-gtk
    zathura
  ];
}
