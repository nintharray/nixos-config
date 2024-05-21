{ pkgs, ... }:

{
  home.packages = with pkgs; [

    busybox
    vifm

  ];
}
