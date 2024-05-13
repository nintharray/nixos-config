{ ... }:

{
  imports = [
    ./x11.nix
  ];

  services.xserver = {
    autorun = false;
    desktopManager = {
      xterm.enable = false;
    };
    displayManager = {
      defaultSession = "none+i3";
    };
    windowManager.i3 = {
      enable = true;
    };
  };
}
