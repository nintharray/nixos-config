{ pkgs, ... }:

{
  home.packages = with pkgs; [
    cmake
    gcc
    gcc-arm-embedded-13
    gnumake
  ];
}
