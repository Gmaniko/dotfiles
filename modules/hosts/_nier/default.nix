{ __findFile, ... }:
let
  hostname = "nier";
in 
{
  den.hosts.x86_64-linux.${hostname}.users.gmaniko = { };

  # den.aspects.${hostname} = {
  #   # put shit here
  # };

}