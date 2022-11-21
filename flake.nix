{
  description = "some haskell packages";
  inputs = {
    nixpkgs.url     = github:nixos/nixpkgs/be44bf67; # nixos-22.05 2022-10-15
    flake-utils.url = github:numtide/flake-utils/c0e246b9;

    has-callstack-src-1-0-1-19.url = github:sixears/has-callstack/r1.0.1.19;
    more-unicode-src-0-0-17-12.url = github:sixears/more-unicode/r0.0.17.12;
    natural-src-0-0-1-14.url       = github:sixears/natural/r0.0.1.14;
    number-src-1-1-2-14.url        = github:sixears/number/r1.1.2.14;
  };

  outputs = { self, nixpkgs, flake-utils
            , has-callstack-src-1-0-1-19
            , more-unicode-src-0-0-17-12
            , natural-src-0-0-1-14
            , number-src-1-1-2-14
            }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          system = system;
          overlays = [ (final: prev: { haskellPackages = prev.haskell.packages.ghc8107; }) ];
        };
        hpkgs = pkgs.haskellPackages;

        callPkg = pname: version: src: { description, libDepends ? _: {} }:
              hpkgs.mkDerivation {
                inherit pname version src description;
                libraryHaskellDepends = libDepends hpkgs;
                license = pkgs.lib.licenses.mit;
              };
      in {
        packages = rec {
          # -- L0 (no internal dependencies) -----------------


          more-unicode           = more-unicode-0-0;
          more-unicode-0-0       = more-unicode-0-0-17-12;
          more-unicode-0-0-17-12 =
            callPkg "more-unicode" "0.0.17.12" more-unicode-src-0-0-17-12 {
              description = "More unicode symbols";
              libDepends = h: with h; [
                base-unicode-symbols containers lens mono-traversable
                prettyprinter tasty-hunit tasty-quickcheck
                # strangely, neither 'base' nor 'text' seem to be required in
                # practice!?
                # base text
              ];
            };

          # -- number --------------------

          number          = number-1-1;
          number-1-1      = number-1-1-2-14;
          number-1-1-2-14 =
            callPkg "number" "1.1.2.14" number-src-1-1-2-14 {
              description = "manage info.yaml";
              libDepends = h: with h; [ base base-unicode-symbols ];
            };

          # -- L1 (internal dependencies on L0) --------------

          natural          = natural-0-0;
          natural-0-0      = natural-0-0-1-14;
          natural-0-0-1-14 = callPkg "natural" "0.0.1.14" natural-src-0-0-1-14 {
            description = "Type-level natural numbers";
            libDepends  = h: with h; [ base base-unicode-symbols  more-unicode ];
          };

          # -- L2 (internal dependencies on L1) --------------

          has-callstack          = has-callstack-1-0;
          has-callstack-1-0      = has-callstack-1-0-1-19;
          has-callstack-1-0-1-19 =
            callPkg "has-callstack" "1.0.1.19" has-callstack-src-1-0-1-19 {
              description = "TypeClass for things that carry around a callstack";
              libDepends = h: with h; [
                base base-unicode-symbols lens safe strings text
                more-unicode natural
              ];
            };
        }; # packages = rec { ...
      } # let pkgs ... in ...
    );
}
