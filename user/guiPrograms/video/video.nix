{ pkgs, ... }:

{
  home.packages = with pkgs; [
    ffmpeg
    yt-dlp
    vlc
    kdenlive
    glaxnimate
  ];
}
