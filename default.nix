{ mkDerivation, async, attoparsec, base, base64-bytestring, binary
, bytestring, bytestring-builder, case-insensitive, clock
, containers, criterion, entropy, HUnit, network, QuickCheck
, random, SHA, stdenv, streaming-commons, test-framework
, test-framework-hunit, test-framework-quickcheck2, text
}:
mkDerivation {
  pname = "websockets";
  version = "0.12.7.1";
  sha256 = "1jqlvgw1ffw0236y4g7li188m9ac37a2yp07vkvcmbz63rmhfmnk";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    async attoparsec base base64-bytestring binary bytestring
    bytestring-builder case-insensitive clock containers entropy
    network random SHA streaming-commons text
  ];
  testHaskellDepends = [
    async attoparsec base base64-bytestring binary bytestring
    bytestring-builder case-insensitive clock containers entropy HUnit
    network QuickCheck random SHA streaming-commons test-framework
    test-framework-hunit test-framework-quickcheck2 text
  ];
  benchmarkHaskellDepends = [
    async attoparsec base base64-bytestring binary bytestring
    bytestring-builder case-insensitive clock containers criterion
    entropy network random SHA text
  ];
  doCheck = true;
  doBenchmark = true;

  homepage = "http://jaspervdj.be/websockets";
  description = "A sensible and clean way to write WebSocket-capable servers in Haskell";
  license = stdenv.lib.licenses.bsd3;
}
