final: prev: {
  sandscreen = prev.stdenv.mkDerivation rec {
    pname = "sandscreen";
    version = "1.0.1";

    src = prev.fetchFromGitHub {
      owner = "frostyarchtide";
      repo = "sandscreen";
      rev = "v${version}";
      sha256 = "sha256-+wjuq+gd7zGhtHNRSL4UBM7puJgIN0RsdHd/7/FMEYU=";
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
