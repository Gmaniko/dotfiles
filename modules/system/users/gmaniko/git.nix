{
  den.aspects.rafael.provides.to-hosts.homeManager.programs.git = {
    enable = true;
    signing = {
      format = "ssh";
      key = "~/.ssh/id_ed25519.pub";
      signByDefault = true;
    };
    settings = {
      user.name = "gmaniko";
      user.email = "niko220302@gmail.com";
      init.defaultBranch = "master";
    };
  };
}