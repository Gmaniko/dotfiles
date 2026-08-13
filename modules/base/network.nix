{ __findFile, ... }:
{
  den.default.nixos.networking.networkmanager.enable = true;
  den.default.includes = [ <den/hostname> ];
}