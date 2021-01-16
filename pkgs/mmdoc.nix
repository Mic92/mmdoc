{stdenv,
cmark-gfm,
xxd,
self
} :

stdenv.mkDerivation rec {
  pname = "mmdoc";
  version = "0.0.8";

  src = self;

  buildInputs = [ cmark-gfm xxd ];

  meta = with stdenv.lib; {
    description = "Minimal Markdown Documentation";
    homepage = src.meta.homepage;
    license = licenses.cc0;
    maintainers = with maintainers; [ ryantm ];
    platforms = platforms.unix;
  };

}
