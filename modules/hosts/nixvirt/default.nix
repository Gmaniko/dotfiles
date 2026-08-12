{ den, ... }: {
  # host aspect
  den.aspects.nixvirt = {
    # host NixOS configuration
    nixos = { pkgs, ... }: {
      # Hardware config 
      imports = [ ./_nixvirt-hardware ];

      hardware.graphics.enable = true;
      services.xserver.videoDrivers = [ "amdgpu" ];
      powerManagement.cpuFreqGovernor = "performance";
      security.rtkit.enable = true;

    };
  };
}
