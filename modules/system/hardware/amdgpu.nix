{
  den.ful.hardware.amdgpu = {
    nixos = {
      hardware.graphics = {
        enable = true;
        enable32Bit = true;
      };
      hardware.amdgpu.initrd.enable = true;
    };
  };
  
}