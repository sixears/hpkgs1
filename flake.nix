{
  description = "some haskell packages";
  inputs = {
    nixpkgs.url     = github:nixos/nixpkgs/be44bf67; # nixos-22.05 2022-10-15
#    build-utils.url = github:sixears/flake-build-utils/r1.0.0.10;
build-utils.url = path:/home/martyn/src/flake-build-utils;

##    has-callstack.url = github:sixears/has-callstack/r1.0.1.10;
##    more-unicode.url  = github:sixears/more-unicode/r0.0.17.7;
##    natural.url       = github:sixears/natural/r0.0.1.7;
    has-callstack.url = path:/home/martyn/src/has-callstack;
#    more-unicode.url  = path:/home/martyn/src/more-unicode;
#    natural.url       = path:/home/martyn/src/natural;
  };

##  inputs.has-callstack = {
##    type = "path";
##    path = "/home/martyn/src/has-callstack";
##    flake = false;
##  };

##  inputs.more-unicode = {
##    type = "path";
##    path = "/home/martyn/src/more-unicode";
##    flake = false;
##  };

##  inputs.natural = {
##    type = "path";
##    path = "/home/martyn/src/natural";
##    flake = false;
##  };

  outputs = { self, build-utils, nixpkgs
            , has-callstack # , more-unicode, natural
            }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        system = system;
        overlays = [ (final: prev: { haskellPackages = prev.haskell.packages.ghc8107; }) ];
      };
    in {

      packages.${system} = rec {
        natural =
          pkgs.haskell.packages.ghc8107.callPackage (
            { mkDerivation, fetchFromGitHub, lib
            , base, base-unicode-symbols }:
              let
                pname = "natural";
                version = "0.0.1.14";
              in
                mkDerivation {
                  inherit pname version;
                  src = fetchFromGitHub {
                    owner = "sixears";
                    repo  = pname;
                    rev   = "r${version}";
                    sha256 = "sha256-Oq1UGCQic1x7b1PsptkHd6w3k6SyMFBVc2uhQAPOjqk";
                  };
                  libraryHaskellDepends = [
                    base base-unicode-symbols
                    more-unicode
                  ];
                  description = "Type-level natural numbers";
                  license = lib.licenses.mit;
                }
          ) {};

        more-unicode =
          pkgs.haskell.packages.ghc8107.callPackage ({ mkDerivation, fetchFromGitHub, lib
                              , base, base-unicode-symbols, containers, lens
                              , mono-traversable, prettyprinter, tasty-hunit
                              , tasty-quickcheck, text
                              }:
            let
              pname = "more-unicode";
              version = "0.0.17.12";
            in
              mkDerivation {
                inherit pname version;
                src = fetchFromGitHub {
                  owner = "sixears";
                  repo  = pname;
                  rev   = "r${version}";
                  sha256 = "sha256-4TlmMRQTBJwCJ2JAFA54Dgah4LPGtQC+9o7X0mhn8qw";
                };
                libraryHaskellDepends = [
                  base base-unicode-symbols containers lens mono-traversable
                  prettyprinter tasty-hunit tasty-quickcheck text
                ];
                testHaskellDepends = [ base ];
                description = "More unicode symbols";
                license = lib.licenses.mit;
              }) {};

        has-callstack =
          pkgs.haskell.packages.ghc8107.callPackage ({ mkDerivation, fetchFromGitHub, lib
                    , base, base-unicode-symbols, lens, safe, strings, text
                    }:
        let
          pname = "has-callstack";
          version = "1.0.1.19";
        in
          mkDerivation {
            inherit pname version;
            src = fetchFromGitHub {
              owner = "sixears";
              repo  = pname;
              rev   = "r${version}";
              sha256 = "sha256-lxdqsh05wSMQ3QMAMA5Euccm5lbFPTG50uhnChTxmxc";
            };
            libraryHaskellDepends = [
              base base-unicode-symbols lens safe strings text
              more-unicode natural
            ];
            description = "TypeClass for things that carry around a callstack";
            license = lib.licenses.mit;
          }) {};

        number =
          pkgs.haskell.packages.ghc8107.callPackage ({ mkDerivation, fetchFromGitHub, lib
                    , base, base-unicode-symbols }:
        let
          pname = "number";
          version = "1.1.2.14";
        in
          mkDerivation {
            inherit pname version;
            src = fetchFromGitHub {
              owner = "sixears";
              repo  = pname;
              rev   = "r${version}";
              sha256 = "sha256-2dRXfRcwTqT5symkNmQM+/wtwE0BwoDfihF/YcDLzVI";
            };
            libraryHaskellDepends = [ base base-unicode-symbols ];
            description = "manage info.yaml";
            license = lib.licenses.mit;
          }) {};

      };
    };
}
