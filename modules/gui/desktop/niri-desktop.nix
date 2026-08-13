# Full desktop composition: bundles the niri WM with noctalia shell,
# audio, and all essential GUI applications into a single import.
# Include <desktop/niri> in any host aspect to get the complete desktop.
{ __findFile, ... }:
{
  den.ful.desktop.niri = {
    includes = [
      <wm/niri>
      <shell/noctalia>
      <audio/pipewire>
      <browser/zen>
      <terminal/kitty>
      <email/thunderbird>
      <video/mpv>
      <image/imv>
      <music/rmpc>
    ];

    nixos.services.greetd = {
      enable = true;
      settigns = rec {
        initial_session = {
          command = "niri-session";
          user = "gmaniko";
        };
        default_session = initial_session;
      };
    };

  };
}