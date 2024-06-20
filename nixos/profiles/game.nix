{ pkgs, ... }:

pkgs.stdenv.mkDerivation {
  name = "game-tools";
  buildInputs = [
    pkgs.godot_4

   
  ];

  installPhase = ''
    echo "This package includes multiple game tools."
  '';

  meta = with pkgs.lib; {
    description = "A custom package that includes multiple game tools.";
    license = licenses.mit;
    maintainers = with maintainers; [ "batman" ];
  };
}
