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
    initExtra = ''
    PROMPT=" %F{255}%n%B%F{196}@%b%F{255}%m: %B%F{196}%(4~|.../%3~ %b%F{255}%#|%~%b%F{255} %#) " 
    '';
  };
}
