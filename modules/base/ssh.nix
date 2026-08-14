{
  den.default = {
    # nixos = {
    #   services.openssh = {
    #     hostKeys = [
    #       {
    #         type = "ed25519";
    #         path = "/etc/ssh/ssh_host_ed25519_key";
    #       }
    #     ];
    #   };
    # };
    # homeManager.programs.ssh = {
    #   enable = true;
    #   # enableDefaultConfig = false;
    #   settings = {
    #     "Match host dtu-*" = {
    #       User = "s214681";
    #       IdentityFile = "~/.ssh/dtu";
    #       AddKeysToAgent = "yes";
    #     };
    #     "dtu-hpc".HostName = "login.hpc.dtu.dk";
    #     "dtu-hpc2".HostName = "login2.hpc.dtu.dk";
    #     "dtu-gbar".HostName = "login.gbar.dtu.dk";
    #     "dtu-gbar2".HostName = "login2.gbar.dtu.dk";
    #     "dtu-transfer".HostName = "transfer.gbar.dtu.dk";
    #   };
    # };
  };
}