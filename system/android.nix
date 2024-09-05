{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    android-udev-rules
  ];
  programs.adb.enable = true;
  users.users.n8.extraGroups = ["adbusers"];
}
