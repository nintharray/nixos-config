{ pkgs, ... }:

{
  home.packages = with pkgs; [

    p7zip
    vifm
    unzip
    usbutils

  ];
}
