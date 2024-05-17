{ pkgs, ... }:

{
  home.packages = with pkgs; [
    openscad
    kicad
    super-slicer
  ];
}
