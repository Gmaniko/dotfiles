{
  den.aspects.weiss = {
    # NixOS config
    nixos = { pkgs, ... }: {
      # Hardware config
      imports = [ ./weiss-hardware.nix ];

      environment.systemPackages = with pkgs; [
        hello
      ];
    };

  };

}
