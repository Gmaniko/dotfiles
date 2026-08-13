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
  den.hosts.x86_64-linux.${hostname} = {
    users.gmaniko = { };
    theme = {
      scheme = ../../theme/catppuccin/scheme.yaml;
      polarity = "dark";
      # wallpaper = ../../theme/catppuccin/wallpaper.png;
    };
  };

  den.aspects.${hostname} = {
    includes = [
      <desktop/niri>
      <theme/catppuccin>
      <net/ssh>
      <hardware/amdgpu>

      (<den/tty-autologin> "gmaniko") # autologin
      
    ];

  };

}
