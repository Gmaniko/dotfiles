{
  den.aspects.nier = {
    # NixOS config
    nixos = { pkgs, ... }: {
      # Hardware config
      imports = [ ./_nier-hardware ];

      environment.systemPackages = with pkgs; [
        hello
      ];
    };

  };

}
