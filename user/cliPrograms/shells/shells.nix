{ pkgs, ... }:
let
  aliases = {
    p = "python3";
    vim = "nvim";
  };
in 
{
  programs.bash = {
    enable = true;
    shellAliases = aliases;
  };

  programs.zsh = {
    enable = true;
    shellAliases = aliases;

    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;
    defaultKeymap = "viins";
    history.share = false;
  };
}
