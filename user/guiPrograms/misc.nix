{ pkgs, ... }:

{
  home.packages = with pkgs; [
    audacious
    gimp
    logseq
    vesktop
    xdg-desktop-portal-gtk
    zathura
  ];
}
