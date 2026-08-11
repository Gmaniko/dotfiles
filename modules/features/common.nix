{ den, ... }: {
  den.aspects.common = {
    includes = with den.aspects; [
      niri
      dev
    ];
  };
}
