{ __findFile, inputs, ... }:
{
  flake-file = {
    inputs = {
      niri-flake.url = "github:epireyn/niri-flake";
      niri-flake.inputs.nixpkgs.follows = "nixpkgs";
    };
    nixConfig = {
      extra-substituters = [ "https://niri.cachix.org" ];
      extra-trusted-public-keys = [ "niri.cachix.org-1:Wv0OmO7PsuocRKzfDoJ3mulSl7Z6oezYhGhR+3W2964=" ];
    };
  };

  den.ful.wm.niri = {
    nixos = {
      # imports = [ inputs.niri-flake.nixosModules.niri ];
      programs.niri = {
        enable = true;
      };
    };
    homeManager = { lib, pkgs, ... }: {
      imports = [ 
        inputs.niri-flake.homeModules.niri
        # inputs.niri-flake.nixosModules.niri
      ];
      programs.niri = {
        enable = true;
        settings = {
          screenshot-path = "~/Pictures/Screenshots/%s.png";
          hotkey-overlay.skip-at-startup = true;
          prefer-no-csd = true;
          xwayland-satellite = {
            enable = true;
            path = lib.getExe pkgs.xwayland-satellite;
          };
        };
      };
    };
  };
}
