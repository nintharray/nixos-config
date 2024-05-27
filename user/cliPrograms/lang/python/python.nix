{ pkgs, ... }:

{
  imports = [
    ./packages.nix
  ];

  home.packages = with pkgs; [
    python3Full
  ];
}
