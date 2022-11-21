{
  description = "some haskell packages";
  inputs = {
    nixpkgs.url     = github:nixos/nixpkgs/be44bf67; # nixos-22.05 2022-10-15
    flake-utils.url = github:numtide/flake-utils/c0e246b9;

    base0-src-0-0-4-11.url         = github:sixears/base0/r0.0.4.11;
    base0t-src-0-0-1-14.url        = github:sixears/base0t/r0.0.1.14;
    base1-src-0-0-9-34.url         = github:sixears/base1/r0.0.9.34;
    base1t-src-0-0-5-36.url        = github:sixears/base1t/r0.0.5.36;
    env-plus-src-1-0-7-37.url      = github:sixears/env-plus/r1.0.7.37;
    exited-src-1-0-4-23.url        = github:sixears/exited/r1.0.4.23;
    fpath-src-1-3-2-39.url         = github:sixears/fpath/r1.3.2.39;
    has-callstack-src-1-0-1-19.url = github:sixears/has-callstack/r1.0.1.19;
    index-src-1-0-1-26.url         = github:sixears/index/r1.0.1.26;
    monaderror-io-src-1-2-5-20.url = github:sixears/monaderror-io/r1.2.5.20;
    more-unicode-src-0-0-17-12.url = github:sixears/more-unicode/r0.0.17.12;
    natural-src-0-0-1-14.url       = github:sixears/natural/r0.0.1.14;
    non-empty-containers-src-1-4-3-36.url = github:sixears/non-empty-containers/r1.4.3.36;
    number-src-1-1-2-14.url        = github:sixears/number/r1.1.2.14;
    parsec-plus-base-src-1-0-5-23.url = github:sixears/parsec-plus-base/r1.0.5.23;
    quasiquoting-src-1-0-1-32.url  = github:sixears/quasiquoting/r1.0.1.32;
    tasty-plus-src-1-5-2-24.url    = github:sixears/tasty-plus/r1.5.2.24;
    tfmt-src-0-2-7-25.url          = github:sixears/tfmt/r0.2.7.25;
  };

  outputs = { self, nixpkgs, flake-utils

            , base0-src-0-0-4-11
            , base0t-src-0-0-1-14
            , base1-src-0-0-9-34
            , base1t-src-0-0-5-36
            , env-plus-src-1-0-7-37
            , exited-src-1-0-4-23
            , fpath-src-1-3-2-39
            , has-callstack-src-1-0-1-19
            , index-src-1-0-1-26
            , monaderror-io-src-1-2-5-20
            , more-unicode-src-0-0-17-12
            , natural-src-0-0-1-14
            , non-empty-containers-src-1-4-3-36
            , number-src-1-1-2-14
            , parsec-plus-base-src-1-0-5-23
            , quasiquoting-src-1-0-1-32
            , tasty-plus-src-1-5-2-24
            , tfmt-src-0-2-7-25
            }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          system = system;
          overlays = [ (final: prev: { haskellPackages = prev.haskell.packages.ghc8107; }) ];
        };
        hpkgs = pkgs.haskellPackages;
        hlib  = pkgs.haskell.lib;

        callPkg = pname: version: src: { description, libDepends ? _: []
                                       , testDepends ? _ : []
                                       }:
              hpkgs.mkDerivation {
                inherit pname version src description;
                libraryHaskellDepends = libDepends hpkgs;
                license = pkgs.lib.licenses.mit;
                testHaskellDepends = testDepends hpkgs;
              };
      in rec {
        packages = rec {
          # -- L0 (no internal dependencies) -----------------

          # -- base0 -------------------

          base0 = base0-0-0;
          base0-0-0 = base0-0-0-4-11;
          base0-0-0-4-11 = callPkg "base0" "0.0.4.11" base0-src-0-0-4-11 {
            description = "Prelude replacement, external packages only, no tests";
            libDepends = h: with h;[
              base base-unicode-symbols data-default data-textual hashable lens
              mtl safe
            ];
          };

          # -- base0t -------------------

          base0t = base0t-0-0;
          base0t-0-0 = base0t-0-0-1-14;
          base0t-0-0-1-14 = callPkg "base0t" "0.0.1.14" base0t-src-0-0-1-14 {
            description = "Prelude replacement, external packages only, incl. tests";
            libDepends = h: with h; [ base0 tasty tasty-hunit ];
          };

          # -- more-unicode ------------

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

          # -- number ------------------

          natural          = natural-0-0;
          natural-0-0      = natural-0-0-1-14;
          natural-0-0-1-14 = callPkg "natural" "0.0.1.14" natural-src-0-0-1-14 {
            description = "Type-level natural numbers";
            libDepends  = h: with h; [ base base-unicode-symbols  more-unicode ];
          };

          # -- L2 (internal dependencies on L1) --------------

          # -- has-callstack -----------

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

          # -- L3 (internal dependencies on L2) --------------

          # -- tfmt --------------------

          tfmt          = tfmt-0-2;
          tfmt-0-2      = tfmt-0-2-7-25;
          tfmt-0-2-7-25 = callPkg "tfmt" "0.2.7.25" tfmt-src-0-2-7-25 {
            description = "type-safe text/string formatting with a simple interface";
            libDepends = h: with h; [
              base containers data-textual formatting lens parsers prettyprinter
              process tasty tasty-hunit template-haskell text text-printer time
              trifecta

              (hlib.markUnbroken text-format)

              base0t has-callstack more-unicode number
            ];
            testDepends = h: with h; [ base tasty ];
          };

          # -- monaderror-io -----------

          monaderror-io          = monaderror-io-1-2;
          monaderror-io-1-2      = monaderror-io-1-2-5-20;
          monaderror-io-1-2-5-20 = callPkg "monaderror-io" "1.2.5.20" monaderror-io-src-1-2-5-20 {
            description = "An AsIOError class for compound errors, and some MonadError handling utilities";
            libDepends = h: with h; [
              base base0 deepseq has-callstack lens more-unicode mtl text-printer
            ];
            testDepends = h: with h; [ base ];
          };

          # -- L4 (internal dependencies on L3) --------------

          # -- exited ------------------

          exited          = exited-1-0;
          exited-1-0      = exited-1-0-4-23;
          exited-1-0-4-23 = callPkg "exited" "1.0.4.23" exited-src-1-0-4-23 {
            description = "An Exited DataType, to represent program exit better than ()";
            libDepends = h: with h; [
              base base-unicode-symbols data-textual mtl

              has-callstack monaderror-io more-unicode
            ];
            testDepends = h: with h; [ base ];
          };

          # -- parsec-plus-base --------

          parsec-plus-base          = parsec-plus-base-1-0;
          parsec-plus-base-1-0      = parsec-plus-base-1-0-5-23;
          parsec-plus-base-1-0-5-23 = callPkg "parsec-plus-base" "1.0.5.23" parsec-plus-base-src-1-0-5-23 {
            description = "Parsecable class, and utilities; base version without file parsing";
            libDepends = h: with h; [
              base base-unicode-symbols data-textual deepseq has-callstack lens
              monaderror-io more-unicode mtl parsec text-printer
            ];
            testDepends = h: with h; [ base ];
          };

          # -- L5 (internal dependencies on L4) --------------

          # -- quasiquoting ------------

          quasiquoting          = quasiquoting-1-0;
          quasiquoting-1-0      = quasiquoting-1-0-1-32;
          quasiquoting-1-0-1-32 = callPkg "quasiquoting" "1.0.1.32" quasiquoting-src-1-0-1-32 {
            description = "manage info.yaml";
            libDepends = h: with h; [
              base base-unicode-symbols data-default lens template-haskell text

              monaderror-io more-unicode parsec-plus-base tfmt
            ];
          };

          # -- tasty-plus --------------

          tasty-plus          = tasty-plus-1-5;
          tasty-plus-1-5      = tasty-plus-1-5-2-24;
          tasty-plus-1-5-2-24 = callPkg "tasty-plus" "1.5.2.24" tasty-plus-src-1-5-2-24 {
            description = "Additional utilities for working with Tasty";
            libDepends = h: with h; [
              base base-unicode-symbols data-textual deepseq directory mtl
              optparse-applicative safe tasty tasty-hunit tasty-quickcheck
              temporary text text-printer

              exited more-unicode
            ];
            testDepends = h: with h; [ base optparse-applicative ];
          };

          # -- L6 (internal dependencies on L5) --------------

          # -- index -------------------

          index          = index-1-0;
          index-1-0      = index-1-0-1-26;
          index-1-0-1-26 = callPkg "index" "1.0.1.26" index-src-1-0-1-26 {
            description = "Class for things that are indexable";
            libDepends = h: with h; [
              base base-unicode-symbols hashable safe tasty tasty-hunit
              unordered-containers

              more-unicode tasty-plus
            ];
            testDepends = h: with h; [
              base base-unicode-symbols optparse-applicative

              more-unicode tasty-plus
            ];
          };

          # -- L7 (internal dependencies on L6) --------------

          # -- base1 -------------------

          base1          = base1-0-0;
          base1-0-0      = base1-0-0-9-34;
          base1-0-0-9-34 = callPkg "base1" "0.0.9.34" base1-src-0-0-9-34 {
            description = "Prelude replacement, incl. first-level local packages";
            libDepends = h: with h; [
              base0 has-callstack index monaderror-io more-unicode tfmt
            ];
          };

          # -- L8 (internal dependencies on L7) --------------

          # -- base1t ------------------

          base1t          = base1t-0-0;
          base1t-0-0      = base1t-0-0-5-36;
          base1t-0-0-5-36 = callPkg "base1t" "0.0.5.36" base1t-src-0-0-5-36 {
            description = "Prelude replacement, first-level local packages, incl. tests";
            libDepends = h: with h; [ base0t base1 tasty-plus ];
          };

          # -- non-empty-containers ----

          non-empty-containers          = non-empty-containers-1-4;
          non-empty-containers-1-4      = non-empty-containers-1-4-3-36;
          non-empty-containers-1-4-3-36 = callPkg "non-empty-containers" "1.4.3.36" non-empty-containers-src-1-4-3-36 {
            description = "Containers that may not be empty, by construction";
            libDepends = h: with h; [
              base base-unicode-symbols base1 containers deepseq lens
              mono-traversable more-unicode QuickCheck tasty tasty-hunit
              tasty-plus tasty-quickcheck template-haskell text text-printer
              unordered-containers

              base1 more-unicode tasty-plus
            ];
            testDepends = h: with h; [ base tasty ];
          };

          # -- L9 (internal dependencies on L8) --------------

          # -- env-plus ----------------

          env-plus          = env-plus-1-0;
          env-plus-1-0      = env-plus-1-0-7-37;
          env-plus-1-0-7-37 = callPkg "env-plus" "1.0.7.37" env-plus-src-1-0-7-37 {
            description = "Utilities for working with the system environment";
            libDepends = h: with h; [
              base containers data-textual deepseq lens mono-traversable mtl
              parsers text text-printer unix

              base1t tasty-plus
            ];
            testDepends = h: with h; [ base tasty ];
          };

          # -- fpath -------------------

          fpath          = fpath-1-3;
          fpath-1-3      = fpath-1-3-2-39;
          fpath-1-3-2-39 = callPkg "fpath" "1.3.2.39" fpath-src-1-3-2-39 {
            description = "Strongly-typed file paths";
            libDepends = h: with h; [
              base base-unicode-symbols containers data-default data-textual
              deepseq directory exceptions filepath genvalidity
              genvalidity-bytestring genvalidity-property genvalidity-text lens
              mono-traversable mtl optparse-applicative parsers QuickCheck safe
              tasty tasty-hunit tasty-quickcheck template-haskell temporary text
              text-printer th-lift-instances unix validity

              base1t exited has-callstack monaderror-io more-unicode
              non-empty-containers quasiquoting tasty-plus tfmt
            ];
            testDepends = h: with h; [ base tasty ];
          };

        }; # packages = rec { ...

        # run, say, nix develop ~/src/hpkgs1/flake.nix#tasty-plus
        devShells.tasty-plus =
          hpkgs.shellFor {
            packages = _: [packages.tasty-plus];
            buildInputs = with hpkgs; [
              haskell-language-server ## you must build it with your ghc to work
              ghcid cabal-install
            ];
          };
      } # let pkgs ... in ...
    );
}
