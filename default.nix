# default.nix
{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation rec {
  pname = "legion-os";
  version = "1.0.0";

  src = ./.;

  buildInputs = [];

  installPhase = ''
    mkdir -p $out/etc/nixos
    cp -r ${src}/* $out/etc/nixos/
  '';

  meta = {
    description = "Legion OS configuration";
    homepage = "https://github.com/legionguy/legion-os";
    license = pkgs.lib.licenses.mit;
    maintainers = with pkgs.lib.maintainers; [ bat ];
  };
}
