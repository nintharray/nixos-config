{ config, pkgs, ... }:
let
	aliases = {
		vim = "nvim";
	};
in
{
	home.username = "n8";
	home.homeDirectory = "/home/n8";

	# This value determines the Home Manager release that your configuration is
	# compatible with. This helps avoid breakage when a new Home Manager release
	# introduces backwards incompatible changes.
	#
	# You should not change this value, even if you update Home Manager. If you do
	# want to update the value, then make sure to first check the Home Manager
	# release notes.
	home.stateVersion = "23.11"; # Please read the comment before changing.

	imports = [
		../../user/cliPrograms/nvim/nvim.nix
		../../user/cliPrograms/shells/shells.nix
		../../user/cliPrograms/misc/misc.nix
		../../user/cliPrograms/git.nix
		../../user/cliPrograms/lang/python/python.nix
		../../user/cliPrograms/lang/c-cpp/c-cpp.nix
		../../user/cliPrograms/lang/latex/texlive.nix
		../../user/cliPrograms/lang/js/node.nix

    ../../user/guiPrograms/wm/wl/hyprland/hyprland.nix
    ../../user/guiPrograms/browsers/firefox/firefox.nix
    ../../user/guiPrograms/browsers/chromium/chromium.nix
    ../../user/guiPrograms/term/kitty.nix
    ../../user/guiPrograms/video/video.nix
    ../../user/guiPrograms/3d/cad.nix
    ../../user/guiPrograms/3d/super-slicer/super-slicer.nix
    ../../user/guiPrograms/misc.nix
    ../../user/guiPrograms/games/minecraft/minecraft.nix
	];

	# The home.packages option allows you to install Nix packages into your
	# environment.
	home.packages = with pkgs; [
		git
		neofetch
		# # It is sometimes useful to fine-tune packages, for example, by applying
		# # overrides. You can do that directly here, just don't forget the
		# # parentheses. Maybe you want to install Nerd Fonts with a limited number of
		# # fonts?
		# (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

		# # You can also create simple shell scripts directly inside your
		# # configuration. For example, this adds a command 'my-hello' to your
		# # environment:
		# (pkgs.writeShellScriptBin "my-hello" ''
		#	 echo "Hello, ${config.home.username}!"
		# '')
	];

	# Home Manager is pretty good at managing dotfiles. The primary way to manage
	# plain files is through 'home.file'.
	home.file = {
		# # Building this configuration will create a copy of 'dotfiles/screenrc' in
		# # the Nix store. Activating the configuration will then make '~/.screenrc' a
		# # symlink to the Nix store copy.
		# ".screenrc".source = dotfiles/screenrc;

		# # You can also set the file content immediately.
		# ".gradle/gradle.properties".text = ''
		#	 org.gradle.console=verbose
		#	 org.gradle.daemon.idletimeout=3600000
		# '';
	};

	# Home Manager can also manage your environment variables through
	# 'home.sessionVariables'. If you don't want to manage your shell through Home
	# Manager then you have to manually source 'hm-session-vars.sh' located at
	# either
	#
	#	~/.nix-profile/etc/profile.d/hm-session-vars.sh
	#
	# or
	#
	#	/etc/profiles/per-user/n8/etc/profile.d/hm-session-vars.sh
	#
	home.sessionVariables = {
		EDITOR = "nvim";
	};

  xdg = {
    enable = true;
    userDirs = {
      enable = true;
      createDirectories = true;
      music = "${config.home.homeDirectory}/media/music";
      videos = "${config.home.homeDirectory}/media/videos";
      pictures = "${config.home.homeDirectory}/media/images";
      download = "${config.home.homeDirectory}/downloads";
      documents = "${config.home.homeDirectory}/docs";
      templates = null;
      desktop = null;
      publicShare = null;
    };
  };

	# Let Home Manager install and manage itself.
	programs.home-manager.enable = true;

}
