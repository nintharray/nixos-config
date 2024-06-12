{ pkgs, ... }:

{
  home.packages = with pkgs; [
    openscad
    kicad
  ];
}
