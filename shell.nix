with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "myenv";
  buildInputs = [ zlib ];
	nativeBuildInputs = [
		pkg-config
		gcc
		glibc
	];

	buildPhase = ''
  NIX_CFLAGS_COMPILE="$(pkg-config --cflags gtk+-3.0) $NIX_CFLAGS_COMPILE"
  # put the usual make/gcc code here
'';
}
