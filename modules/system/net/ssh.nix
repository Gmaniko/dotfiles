{
  den.ful.net.ssh = {
    nixos = {
      services.openssh = {
        enable = true;
        openFirewall = true;
        # settings = {
        #   KbdInteractiveAuthentication = false;
        #   PasswordAuthentication = false;
        #   PermitRootLogin = "no";
        # };
      };
      programs.nix-ld.enable = true; # for vscode server
    };
  };
}
