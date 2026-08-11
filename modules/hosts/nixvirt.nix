{
  # host aspect
  den.aspects.nixvirt = {
    # host NixOS configuration
    nixos = { pkgs, ... }: {
      # Hardware config 
      imports = [ ./_nixvirt-hardware ];
      environment.systemPackages = [ pkgs.hello ];
    };
  };
}
