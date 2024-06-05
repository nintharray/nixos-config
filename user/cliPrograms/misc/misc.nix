{ pkgs, ... }:

{
  home.packages = with pkgs; [

    vifm
    unzip

  ];
}
