final: prev: {
  sandscreen = prev.stdenv.mkDerivation rec {
    pname = "sandscreen";
    version = "1.0.2";

    src = prev.fetchFromGitHub {
      owner = "frostyarchtide";
      repo = "sandscreen";
      rev = "v${version}";
      sha256 = "sha256-iEDVharT1C28Wm7JlSqRrISqBNJv7Y2soaaJX1oX+Ro=";
    };

    nativeBuildInputs = [ prev.cmake ];

    buildInputs = [ prev.ncurses ];

    installPhase = ''
      mkdir -p $out/bin/
      cp sandscreen $out/bin/
    '';

    meta = with prev.lib; {
      description = "A basic terminal screensaver built on ncurses";
      license = licenses.mit;
      homepage = "https://github.com/frostyarchtide/sandscreen";
    };
  };
}
