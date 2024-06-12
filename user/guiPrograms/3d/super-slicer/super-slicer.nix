{ pkgs, config, lib, ... }:

{
  home.packages = with pkgs; [
    super-slicer-latest
  ];

  # configure printer
  home.file."${config.xdg.configHome}/SuperSlicer/printer/Sovol_Sv06.ini".source = ./printer/Sovol_Sv06.ini;

  # configure print settings
  home.file."${config.xdg.configHome}/SuperSlicer/print/_Ellis_Decorative_Standard_15mm3-SOVOL.ini".source = ./print/_Ellis_Decorative_Standard_15mm3-SOVOL.ini;
  home.file."${config.xdg.configHome}/SuperSlicer/print/_Ellis_Decorative_Standard_15mm3-SOVOL-abs.ini".source = ./print/_Ellis_Decorative_Standard_15mm3-SOVOL-abs.ini;
  home.file."${config.xdg.configHome}/SuperSlicer/print/_Ellis_Decorative_Standard_15mm3-SOVOL-slow.ini".source = ./print/_Ellis_Decorative_Standard_15mm3-SOVOL-slow.ini;

  # configure filaments
  home.file."${config.xdg.configHome}/SuperSlicer/filament/ELEGOO_PLA_Black.ini".source = ./filament/ELEGOO_PLA_Black.ini;
  home.file."${config.xdg.configHome}/SuperSlicer/filament/Eryone_PETG_-_Blue.ini".source = ./filament/Eryone_PETG_-_Blue.ini;
  home.file."${config.xdg.configHome}/SuperSlicer/filament/Eryone_PLA_-_White.ini".source = ./filament/Eryone_PLA_-_White.ini;
  home.file."${config.xdg.configHome}/SuperSlicer/filament/Polymaker_ABS_-_Dark_Grey.ini".source = ./filament/Polymaker_ABS_-_Dark_Grey.ini;
}
