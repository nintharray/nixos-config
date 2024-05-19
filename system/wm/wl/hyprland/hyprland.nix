{ pkgs, ... }:

{
  imports = [
    ../../pipewire.nix
  ];

  programs.hyprland.enable = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
