{ __findFile, ... }:
{
  # user aspect
  den.aspects.gmaniko = {
    includes = [
      <den/define-user>
      <den/primary-user>
      (<den/user-shell> "fish")
      <den/host-aspects>
    ];
  };
}
