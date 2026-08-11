{
  # host aspect
  den.aspects.nixvirt = {
    # host NixOS configuration
    nixos = { pkgs, ... }: {
      environment.systemPackages = [ pkgs.hello ];
    };
  };
}
