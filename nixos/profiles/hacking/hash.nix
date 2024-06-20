{ pkgs, ... }:

pkgs.stdenv.mkDerivation {
  name = "hacker-tools";
  buildInputs = [
    pkgs.hashcat
    pkgs.john
    pkgs.wifite2
    pkgs.johnny
    pkgs.crunch
    pkgs.thc-hydra
    pkgs.bully
    pkgs.cewl

   
  ];

  installPhase = ''
    echo "This package includes multiple hash-cracking tools."
  '';

  meta = with pkgs.lib; {
    description = "A custom package that includes multiple hash-cracking tools.";
    license = licenses.mit;
    maintainers = with maintainers; [ "batman" ];
  };
}
