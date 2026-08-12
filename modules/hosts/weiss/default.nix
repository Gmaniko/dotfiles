{
  den.aspects.weiss = {
    # NixOS config
    nixos = { pkgs, ... }: {
      # Hardware config
      imports = [ ./_weiss-hardware ];

      environment.systemPackages = with pkgs; [
        hello
      ];
    };

  };

}
