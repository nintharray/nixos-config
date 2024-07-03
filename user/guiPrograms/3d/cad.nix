{ pkgs, ... }:

{
  home.packages = with pkgs; [
    openscad
    kicad
  ];
  home.file.".local/share/OpenSCAD/libraries/BOSL".source =
      pkgs.fetchFromGitHub {
        owner = "revarbat";
        repo = "BOSL";
        rev = "refs/heads/master";
        sha256 = "1s08jx4npiqyryh7h3kcr7hb2razqg3kz4sm5cyysg8kvldfm2yv";
      };
  home.file.".local/share/OpenSCAD/libraries/BOSL2".source =
      pkgs.fetchFromGitHub {
        owner = "revarbat";
        repo = "BOSL2";
        rev = "refs/heads/master";
        sha256 = "0brjivhwfr53mwpkv1b1cjl0j6ps5db6rwnxhy9q9fm8f19i8sg4";
      };
}
