{
  den.default.nixos = { pkgs, ... }: {
    console = {
      font = "ter-114n";
      useXkbConfig = true;
      packages = with pkgs; [
        terminus_font
      ];
    };
    services.xserver.xkb.layout = "dk";
  };
}