{ pkgs, ... }:

{
  home.packages = with pkgs; [
    audacious
    gimp
    zathura
  ];
}
