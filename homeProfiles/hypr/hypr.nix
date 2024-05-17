# My config for Hyprland window manager
args @ {
  inputs,
  outputs,
  homeProfiles,
  personal-data,
  pkgs,
  pkgs-stable,
  pkgs-unstable,
  system,
  lib,
  config,
  ...
}: let
in {
  imports = [
    homeProfiles.graphical
    inputs.hyprland.homeManagerModules.default
    inputs.hyprlock.homeManagerModules.default
    inputs.hypridle.homeManagerModules.default
    inputs.hyprpaper.homeManagerModules.default
  ];

  services.dunst.enable = true;
  programs.hyprlock.enable = true;
  services.hypridle.enable = true;
  services.hyprpaper = rec {
    enable = true;
    preloads = [];
    wallpapers = [
      "eDP-1,/home/hpreiser/Downloads/chris-czermak-PamFFHL6fVY-unsplash.jpg"
      "DP-1,/home/hpreiser/Downloads/mike-yukhtenko-wfh8dDlNFOk-unsplash.jpg"
    ];
  };
}
