{ pkgs, ... }:

{
  home.packages = with pkgs; [

    nmap
    p7zip
    vifm
    unzip
    usbutils

  ];
}
