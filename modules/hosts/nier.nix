{
  den.aspects.nier = {
    # NixOS config
    nixos = { pkgs, ... }: {
      # Hardware config
      imports = [ ./nier-hardware.nix ];

      environment.systemPackages = with pkgs; [
        hello
      ];
    };

  };

}
