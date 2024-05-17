{ pkgs, ... }:

{
	programs.git = {
		enable = true;
		userName = "nintharray";
		userEmail = "167829823+nintharray@users.noreply.github.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
	};
}
