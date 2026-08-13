{
  den.default.nixos = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      bat
      duf
      dust
      fd
      git
      just
      kitty.terminfo
      tldr
      ouch
      wget
    ];
  };
}