{ pkgs, ... }:

pkgs.stdenv.mkDerivation {
  name = "hacker-tools";
  buildInputs = [
    pkgs.amass
    pkgs. burpsuite
    
    pkgs.cewl
    pkgs.crunch
    pkgs.nmap
    pkgs.rustscan
    pkgs.sqlmap
    pkgs.webanalyze
    pkgs.theharvester

   
  ];

  installPhase = ''
    echo "This package includes multiple bugbounty tools."
  '';

  meta = with pkgs.lib; {
    description = "A custom package that includes multiple bugbounty tools.";
    license = licenses.mit;
    maintainers = with maintainers; [ "batman" ];
  };
}
