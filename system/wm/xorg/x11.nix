{ pkgs, ... }:

{
  imports = [
    ../pipewire.nix
  ];

  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "";
    exportConfiguration = true;
    videoDrivers = [ "intel" ];
    excludePackages = [ pkgs.xterm ];
    displayManager = {
      startx.enable = true;
    };
  };
}
