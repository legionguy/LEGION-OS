{ pkgs, ... }:

let
  hackerTools = import ./hash.nix { inherit pkgs; };
  bugBountyTools = import ./bugbounty.nix { inherit pkgs; };
in

pkgs.stdenv.mkDerivation {
  name = "everything-tools";
  buildInputs = hackerTools.buildInputs ++ bugBountyTools.buildInputs;

  installPhase = ''
    echo "This package includes tools from multiple categories."
  '';

  meta = with pkgs.lib; {
    description = "A custom package that includes tools from multiple categories.";
    license = licenses.mit;
    maintainers = with maintainers; [ "batman" ];
  };
}
