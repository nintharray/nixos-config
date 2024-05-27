{ pkgs, ... }:

{
  home.packages = with pkgs.python3Packages; [
    black
    flask
    pip
  ];
}
