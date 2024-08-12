{ pkgs, ... }:

{

  home.packages = with pkgs; [
    (python3.withPackages(ps: with ps; [
      black
      flask
      grpcio-tools
      pip
      protobuf
    ]))
  ];
}
