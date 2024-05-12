{
	description = "initial flake";

	inputs = {
		nixpkgs.url = "nixpkgs/nixos-23.11";
		home-manager.url = "github:nix-community/home-manager/release-23.11";
		home-manager.inputs.nixpkgs.follows = "nixpkgs";
	};

	outputs = { self, nixpkgs, home-manager, ... }:
		let
			system = "x86_64-linux";
			lib = nixpkgs.lib;
			pkgs = nixpkgs.legacyPackages.${system};
		in {
			nixosConfigurations = {
				homelab = lib.nixosSystem {
					modules = [ ./profiles/homelab/configuration.nix ];
				};
				t430 = lib.nixosSystem {
					modules = [ ./profiles/t430/configuration.nix ];
				};
			};
			homeConfigurations = {
				homelab = home-manager.lib.homeManagerConfiguration {
					inherit pkgs;
					modules = [ ./profiles/homelab/home.nix ];
				};
				t430 = home-manager.lib.homeManagerConfiguration {
					inherit pkgs;
					modules = [ ./profiles/t430/home.nix ];
				};
			};
		};
}
