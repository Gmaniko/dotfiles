{ lib, den, ... }:
{
  den.default.homeManager.home.stateVersion = "26.05";

  den.default.includes = [ den.batteries.hostname ];

  # enable hm by default
  den.schema.user.classes = lib.mkDefault [ "homeManager" ];

  den.default.nixos = { pkgs, ... }: {
    system.stateVersion = "26.05";
    i18n.defaultLocale = "en_DK.UTF-8";
    console.useXkbConfig = true;
    services.xserver.xkb.layout = "dk";

    environment.systemPackages = with pkgs; [
      vim
      git
    ];
    
    # Time zone
    time.timeZone = "Europe/Copenhagen";
    
    # network
    networking.networkmanager.enable = true;
    
    # boot
    boot = {
      loader = {
        systemd-boot.enable = true;
        efi.canTouchEfiVariables = true;
      };
      kernelPackages = pkgs.linuxPackages_latest;
    };

    # Sound
    services.pipewire = {
      enable = true;
      pulse.enable = true;
    };

    nix.settings.experimental-features = [ "nix-command" "flakes" ];
  };
}
