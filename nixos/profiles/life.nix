{ pkgs, ... }:

pkgs.stdenv.mkDerivation {
  name = "life-tools";
  buildInputs = [
    pkgs.discord
    pkgs.spotify
    pkgs.obs-studio
    pkgs.zoom-us
    pkgs.krita
    pkgs.libsForQt5.kdenlive
    pkgs.vscode-fhs
    pkgs.direnv # need for nix extension in vscode

   
  ];

  installPhase = ''
    echo "This package includes multiple life tools."
  '';

  meta = with pkgs.lib; {
    description = "A custom package that includes multiple life tools.";
    license = licenses.mit;
    maintainers = with maintainers; [ "batman" ];
  };
}
