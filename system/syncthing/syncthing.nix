{ pkgs, config, ... }:

{
  services.syncthing = {
    enable = true;
    user = "n8";
    dataDir = "/home/n8/sync";
    configDir = "/home/n8/.config/syncthing";
    overrideDevices = true;
    overrideFolders = true;
    settings = {
      devices = {
        "phone" = { id = "SLVTWVY-UECUZO5-KD3KUQF-ZZRYL2Q-INAZWUI-TFLQC3T-OXDJITF-DI5BVQV"; };
        "laptop" = { id = "Q2YYMBV-2LQPQIW-6IX2B3Y-XJ2VICC-EBUDRCM-FWJGGNO-Q2GBNVO-DANQWQA"; };
      };
      folders = {
        "sync" = {
          path = "/home/n8/sync";
          devices = [ "phone" "laptop" ];
        };
        "photos" = {
          path = "/home/n8/media/images/pictures";
          devices = [ "phone" "laptop" ];
        };
      };
    };
  };

  networking.firewall = {
    allowedTCPPorts = [
      8384 # Syncthing GUI
      22000 # Syncthing protocol
    ];
    allowedUDPPorts = [
      21027 # Syncthing protocol
    ];
  };
}
