{ pkgs, ... }:

{
		programs.neovim = {
			enable = true;

			viAlias = true;
			vimAlias = true;
			vimdiffAlias = true;
		
			extraPackages = with pkgs; [
				fzf
				lua-language-server
        nerdfonts
				nil
				xclip
			];
		
			plugins = with pkgs.vimPlugins; [
		
				{
					plugin = nvim-lspconfig;
					type = "lua";
					config = "${builtins.readFile ./plugin/lsp.lua}";
				}
		
				{
					plugin = comment-nvim;
					type = "lua";
					config = ''require("Comment").setup()'';
				}

				{
					plugin = gruvbox-nvim;
					config = "colorscheme gruvbox";
				}

				neodev-nvim

				nvim-cmp 

				{
					plugin = nvim-cmp;
					type = "lua";
					config = "${builtins.readFile ./plugin/cmp.lua}";
				}

				{
					plugin = telescope-nvim;
					type = "lua";
					config = "${builtins.readFile ./plugin/telescope.lua}";
				}

				telescope-fzf-native-nvim

				cmp_luasnip
				cmp-nvim-lsp

				luasnip
				friendly-snippets

				nvim-web-devicons

        {
          plugin = lualine-nvim;
          type = "lua";
          config = "${builtins.readFile ./plugin/lualine.lua}";
        }

				{
					plugin = (nvim-treesitter.withPlugins (p: [
						p.tree-sitter-nix
						p.tree-sitter-vim
						p.tree-sitter-bash
						p.tree-sitter-lua
						p.tree-sitter-python
						p.tree-sitter-json
					]));
					type = "lua";
					config = "${builtins.readFile ./plugin/treesitter.lua}";
				}

				vim-nix

			];
		
			extraLuaConfig = ''
					${builtins.readFile ./options.lua}
			'';
		};
}
