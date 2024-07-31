{ pkgs, lib, system, ... }:

let
  pkgs-23-11 = import (builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/refs/tags/23.11.tar.gz";
    sha256 = "1ndiv385w1qyb3b18vw13991fzb9wg4cl21wglk89grsfsnra41k";
  }) {
    inherit (pkgs) system;
  };

  # need nerdfonts 3.0.2 (from nixpkgs-23.11) for Terminus specifically
  fonts-23-11 = with pkgs-23-11; [
    (nerdfonts.override { fonts = [ "Terminus" ]; })
  ];

  fonts-current = with pkgs; [
    font-awesome
    material-design-icons
    (nerdfonts.override { 
      fonts = [ 
        "DroidSansMono" 
        "FiraCode"
        "NerdFontsSymbolsOnly"
        "Noto"
        ];
      }
    )
  ];
in 
{
  fonts.packages = fonts-current ++ fonts-23-11;
}
