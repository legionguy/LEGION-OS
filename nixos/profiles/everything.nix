{ pkgs, ... }:

let
  hackerTools = import ../hacking/hacking-everything.nix { inherit pkgs; };
  gameTools = import ./game.nix { inherit pkgs; };
  lifeTools = import ./life.nix { inherit pkgs; };
in

pkgs.stdenv.mkDerivation {
  name = "everything-tools";
  src = null; # No actual source, set to null or /dev/null
  buildInputs = hackerTools.buildInputs ++ gameTools.buildInputs ++ lifeTools.buildInputs;

  installPhase = ''
    echo "This package includes tools from multiple categories."
  '';

  meta = with pkgs.lib; {
    description = "A custom package that includes tools from multiple categories.";
    license = licenses.mit;
    maintainers = with maintainers; [ "batman" ];
  };
}

