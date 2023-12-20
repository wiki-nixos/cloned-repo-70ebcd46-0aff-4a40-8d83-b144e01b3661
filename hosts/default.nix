# USED_BY: /flake.nix
# DESC: Defines the nixosConfigurations.
# CMD: 'nixos-rebuild switch --flake .#<hostname>'
{
  nixpkgs,
  pkgs,
  inputs,
  outputs,
  ...
}: let
  myMkNixOSConfig = hostname:
    nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs outputs;};
      modules = [./${hostname}];
    };
in {
  imports = [];

  KeksWork-Win11 = myMkNixOSConfig "KeksWork-Win11";
  kekswork2312 = myMkNixOSConfig "kekswork2312";
}
