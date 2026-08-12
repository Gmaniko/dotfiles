{
  den.default.nixos = { pkgs, ... }: {
    console = {
      font = "ter-114n";
      keyMap = "dk";
      packages = with pkgs; [
        terminus_font
      ];
    };
  };
}