# { den, ... }: {
#   # host aspect
#   den.aspects.nixvirt = {
#     # host NixOS configuration
#     nixos = { pkgs, ... }: {
#       # Hardware config 
#       imports = [ ./_nixvirt-hardware ];

#       hardware.graphics.enable = true;
#       services.xserver.videoDrivers = [ "amdgpu" ];
#       powerManagement.cpuFreqGovernor = "performance";
#       security.rtkit.enable = true;

#     };
#   };
# }


{ __findFile, ... }:
let
  hostname = "nixvirt";
in 
{
  den.hosts.x86_64-linux.${hostname}.users.gmaniko = { };

  den.aspects.${hostname} = {
    includes = [
      <desktop/niri>
      
    ];
  };

}
