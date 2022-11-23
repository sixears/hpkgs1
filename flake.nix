{
  description = "some haskell packages";
  inputs = {
    nixpkgs.url     = github:nixos/nixpkgs/be44bf67; # nixos-22.05 2022-10-15
    flake-utils.url = github:numtide/flake-utils/c0e246b9;

    base0-src-0-0-4-11 = {
      type  = "github";
      owner = "sixears";
      repo  = "base0";
      ref   = "r0.0.4.11";
      flake = false;
    };
    base0t-src-0-0-1-14 = {
      type  = "github";
      owner = "sixears";
      repo  = "base0t";
      ref   = "r0.0.1.14";
      flake = false;
    };
    base1-src-0-0-9-34 = {
      type  = "github";
      owner = "sixears";
      repo  = "base1";
      ref   = "r0.0.9.34";
      flake = false;
    };
    base1t-src-0-0-5-36 = {
      type  = "github";
      owner = "sixears";
      repo  = "base1t";
      ref   = "r0.0.5.36";
      flake = false;
    };
    containers-plus-src-0-0-10-39 = {
      type  = "github";
      owner = "sixears";
      repo  = "containers-plus";
      ref   = "r0.0.10.39";
      flake = false;
    };
    env-plus-src-1-0-7-37 = {
      type  = "github";
      owner = "sixears";
      repo  = "env-plus";
      ref   = "r1.0.7.37";
      flake = false;
    };
    exited-src-1-0-4-23 = {
      type  = "github";
      owner = "sixears";
      repo  = "exited";
      ref   = "r1.0.4.23";
      flake = false;
    };
    fpath-src-1-3-2-39 = {
      type  = "github";
      owner = "sixears";
      repo  = "fpath";
      ref   = "r1.3.2.39";
      flake = false;
    };
    fstat-src-1-0-2-26 = {
      type  = "github";
      owner = "sixears";
      repo  = "fstat";
      ref   = "r1.0.2.26";
      flake = false;
    };
    has-callstack-src-1-0-1-19 = {
      type  = "github";
      owner = "sixears";
      repo  = "has-callstack";
      ref   = "r1.0.1.19";
      flake = false;
    };
    index-src-1-0-1-26 = {
      type  = "github";
      owner = "sixears";
      repo  = "index";
      ref   = "r1.0.1.26";
      flake = false;
    };
    log-plus-src-0-0-4-4 = {
      type  = "github";
      owner = "sixears";
      repo  = "log-plus";
      ref   = "r0.0.4.4";
      flake = false;
    };
    mockio-src-0-0-4-4 = {
      type  = "github";
      owner = "sixears";
      repo  = "mockio";
      ref   = "r0.0.4.4";
      flake = false;
    };
    mockio-log-src-0-1-2-0 = {
      type  = "github";
      owner = "sixears";
      repo  = "mockio-log";
      ref   = "r0.1.2.0";
      flake = false;
    };
    mockio-plus-src-0-3-12-0 = {
      type  = "github";
      owner = "sixears";
      repo  = "mockio-plus";
      ref   = "r0.3.12.0";
      flake = false;
    };
    monaderror-io-src-1-2-5-20 = {
      type  = "github";
      owner = "sixears";
      repo  = "monaderror-io";
      ref   = "r1.2.5.20";
      flake = false;
    };
    monadio-plus-src-2-5-1-49 = {
      type  = "github";
      owner = "sixears";
      repo  = "monadio-plus";
      ref   = "r2.5.1.49";
      flake = false;
    };
    more-unicode-src-0-0-17-12 = {
      type  = "github";
      owner = "sixears";
      repo  = "more-unicode";
      ref   = "r0.0.17.12";
      flake = false;
    };
    natural-src-0-0-1-14 = {
      type  = "github";
      owner = "sixears";
      repo  = "natural";
      ref   = "r0.0.1.14";
      flake = false;
    };
    non-empty-containers-src-1-4-3-36 = {
      type  = "github";
      owner = "sixears";
      repo  = "non-empty-containers";
      ref   = "r1.4.3.36";
      flake = false;
    };
    number-src-1-1-2-14 = {
      type  = "github";
      owner = "sixears";
      repo  = "number";
      ref   = "r1.1.2.14";
      flake = false;
    };
    optparse-plus-src-1-3-2-42 = {
      type = "github";
      owner = "sixears";
      repo  = "optparse-plus";
      ref   = "r1.3.2.42";
      flake = false;
    };
    parsec-plus-base-src-1-0-5-23 = {
      type  = "github";
      owner = "sixears";
      repo  = "parsec-plus-base";
      ref   = "r1.0.5.23";
      flake = false;
    };
    parsec-plus-src-1-1-1-44 = {
      type  = "github";
      owner = "sixears";
      repo  = "parsec-plus";
      ref   = "r1.1.1.44";
      flake = false;
    };
    parser-plus-src-1-0-7-29 = {
      type  = "github";
      owner = "sixears";
      repo  = "parser-plus";
      ref   = "r1.0.7.29";
      flake = false;
    };
    proclib-src-3-2-3-53 = {
      type  = "github";
      owner = "sixears";
      repo  = "proclib";
      ref   = "r3.2.3.53";
      flake = false;
    };
    quasiquoting-src-1-0-1-32 = {
      type  = "github";
      owner = "sixears";
      repo  = "quasiquoting";
      ref   = "r1.0.1.32";
      flake = false;
    };
    single-src-0-0-1-0 = {
      type  = "github";
      owner = "sixears";
      repo  = "single";
      ref   = "r0.0.1.0";
      flake = false;
    };
    stdmain-src-1-5-13-0 = {
      type  = "github";
      owner = "sixears";
      repo  = "stdmain";
      ref   = "r1.5.13.0";
      flake = false;
    };
    tasty-plus-src-1-5-2-24 = {
      type  = "github";
      owner = "sixears";
      repo  = "tasty-plus";
      ref   = "r1.5.2.24";
      flake = false;
    };
    textual-plus-src-1-0-2-27 = {
      type  = "github";
      owner = "sixears";
      repo  = "textual-plus";
      ref   = "r1.0.2.27";
      flake = false;
    };
    tfmt-src-0-2-7-25 = {
      type  = "github";
      owner = "sixears";
      repo  = "tfmt";
      ref   = "r0.2.7.25";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, flake-utils

            , base0-src-0-0-4-11
            , base0t-src-0-0-1-14
            , base1-src-0-0-9-34
            , base1t-src-0-0-5-36
            , containers-plus-src-0-0-10-39
            , env-plus-src-1-0-7-37
            , exited-src-1-0-4-23
            , fpath-src-1-3-2-39
            , fstat-src-1-0-2-26
            , has-callstack-src-1-0-1-19
            , index-src-1-0-1-26
            , log-plus-src-0-0-4-4
            , mockio-src-0-0-4-4
            , mockio-log-src-0-1-2-0
            , mockio-plus-src-0-3-12-0
            , monaderror-io-src-1-2-5-20
            , monadio-plus-src-2-5-1-49
            , more-unicode-src-0-0-17-12
            , natural-src-0-0-1-14
            , non-empty-containers-src-1-4-3-36
            , number-src-1-1-2-14
            , optparse-plus-src-1-3-2-42
            , parsec-plus-base-src-1-0-5-23
            , parsec-plus-src-1-1-1-44
            , parser-plus-src-1-0-7-29
            , proclib-src-3-2-3-53
            , quasiquoting-src-1-0-1-32
            , single-src-0-0-1-0
            , stdmain-src-1-5-13-0
            , tasty-plus-src-1-5-2-24
            , textual-plus-src-1-0-2-27
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

        callPkg = pname: version: src: { description
                                       , libDepends ? _: []
                                       , testDepends ? _ : []
                                       , postConfigure ? ""
                                       }:
              hpkgs.mkDerivation {
                inherit pname version src description postConfigure;
                libraryHaskellDepends = libDepends hpkgs;
                license = pkgs.lib.licenses.mit;
                testHaskellDepends = testDepends hpkgs;
              };
      in rec {
        packages = rec {
          # -- L0 (no internal dependencies) ---------------

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

          # -- L1 (internal dependencies on L0) ------------

          # -- number ------------------

          natural          = natural-0-0;
          natural-0-0      = natural-0-0-1-14;
          natural-0-0-1-14 = callPkg "natural" "0.0.1.14" natural-src-0-0-1-14 {
            description = "Type-level natural numbers";
            libDepends  = h: with h; [ base base-unicode-symbols  more-unicode ];
          };

          # -- single ------------------

          single         = single-0-0;
          single-0-0     = single-0-0-1-0;
          single-0-0-1-0 = callPkg "single" "0.0.1.0" single-src-0-0-1-0 {
            description = "collections which have a 'singleton'-like function";
            libDepends = h: with h; [
              base base-unicode-symbols containers dlist mono-traversable

              more-unicode
            ];
          };

          # -- L2 (internal dependencies on L1) ------------

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

          # -- L3 (internal dependencies on L2) ------------

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

          # -- L4 (internal dependencies on L3) ------------

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

          # -- fstat -------------------

          fstat          = fstat-1-0;
          fstat-1-0      = fstat-1-0-2-26;
          fstat-1-0-2-26 = callPkg "fstat" "1.0.2.26" fstat-src-1-0-2-26 {
            description = "Haskell version of C's struct stat";
            libDepends = h: with h; [
              base base-unicode-symbols data-textual text text-printer tfmt time
              unix
            ];
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

          # -- textual-plus ------------

          textual-plus          = textual-plus-1-0;
          textual-plus-1-0      = textual-plus-1-0-2-27;
          textual-plus-1-0-2-27 = callPkg "textual-plus" "1.0.2.27" textual-plus-src-1-0-2-27 {
            description = "manage info.yaml";
            libDepends = h: with h; [
              base base-unicode-symbols data-textual mtl text tfmt
            ];
          };

          # -- L5 (internal dependencies on L4) ------------

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

          # -- L6 (internal dependencies on L5) ------------

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

          # -- L7 (internal dependencies on L6) ------------

          # -- base1 -------------------

          base1          = base1-0-0;
          base1-0-0      = base1-0-0-9-34;
          base1-0-0-9-34 = callPkg "base1" "0.0.9.34" base1-src-0-0-9-34 {
            description = "Prelude replacement, incl. first-level local packages";
            libDepends = h: with h; [
              base0 has-callstack index monaderror-io more-unicode tfmt
            ];
          };

          # -- L8 (internal dependencies on L7) ------------

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

          # -- L9 (internal dependencies on L8) ------------

          # -- containers-plus ---------

          containers-plus           = containers-plus-0-0;
          containers-plus-0-0       = containers-plus-0-0-10-39;
          containers-plus-0-0-10-39 = callPkg "containers-plus" "0.0.10.39" containers-plus-src-0-0-10-39 {
            description = "Additional Utilities for Working with Containers";
            libDepends = h: with h; [
              base base-unicode-symbols containers hashable lens
              mono-traversable tasty tasty-hunit text-printer
              unordered-containers

              base1 more-unicode non-empty-containers tasty-plus textual-plus
            ];
            testDepends = h: with h; [ base tasty ];
          };

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

          # -- parser-plus -------------

          parser-plus          = parser-plus-1-0;
          parser-plus-1-0      = parser-plus-1-0-7-29;
          parser-plus-1-0-7-29 = callPkg "parser-plus" "1.0.7.29" parser-plus-src-1-0-7-29 {
            description = "manage info.yaml";
            libDepends = h: with h; [
              base base-unicode-symbols data-textual mono-traversable mtl
              nonempty-containers parsec parsers tasty tasty-hunit

              more-unicode natural non-empty-containers tasty-plus
            ];
            testDepends = h: with h; [ base tasty ];
          };

          # -- L10 (internal dependencies on L9) -----------

          # -- monadio-plus ------------

          monadio-plus          = monadio-plus-2-5;
          monadio-plus-2-5      = monadio-plus-2-5-1-49;
          monadio-plus-2-5-1-49 = callPkg "monadio-plus" "2.5.1.49" monadio-plus-src-2-5-1-49 {
            description = "IO operations, using MonadIO & MonadError with AsIOError";
            libDepends = h: with h; [
              base base-unicode-symbols bytestring containers data-textual
              deepseq directory exceptions filelock filepath lens mtl process
              safe tasty-hunit temporary text text-printer unix

              base1t containers-plus env-plus exited fpath fstat monaderror-io
              more-unicode natural tasty-plus
            ];
            testDepends = h: with h; [ base tasty ];
            postConfigure = ''
              substitute proto/MonadIO/Paths.hs src/MonadIO/Paths.hs \
                --replace __gnugrep__ ${pkgs.gnugrep}
            '';
          };

          # -- parsec-plus -------------

          parsec-plus          = parsec-plus-1-1;
          parsec-plus-1-1      = parsec-plus-1-1-1-44;
          parsec-plus-1-1-1-44 = callPkg "parsec-plus" "1.1.1.44" parsec-plus-src-1-1-1-44 {
            description = "Parsecable class, with file-reading functions";
            libDepends = h: with h; [
              base base-unicode-symbols data-textual lens mtl parsec

              base1t fpath monaderror-io monadio-plus parsec-plus-base
            ];
            testDepends = h: with h; [ base ];
          };

          # -- L11 (internal dependencies on L10) ----------

          # -- log-plus ----------------

          log-plus         = log-plus-0-0;
          log-plus-0-0     = log-plus-0-0-4-4;
          log-plus-0-0-4-4 = callPkg "log-plus" "0.0.4.4" log-plus-src-0-0-4-4 {
            description = "Logging, the way I like it";
            libDepends = h: with h; [
              base base-unicode-symbols data-default data-textual deepseq dlist
              exceptions has-callstack lens logging-effect monadio-plus
              mono-traversable more-unicode mtl parsec-plus parser-plus
              prettyprinter prettyprinter-ansi-terminal safe single tasty
              tasty-hunit tasty-plus terminal-size text text-printer tfmt time
            ];
            testDepends = h: with h; [ base tasty ];
          };

          # -- mockio ------------------

          mockio         = mockio-0-0;
          mockio-0-0     = mockio-0-0-4-4;
          mockio-0-0-4-4 = callPkg "mockio" "0.0.4.4" mockio-src-0-0-4-4 {
            description = "Mock IO actions (e.g., for dry-runs)";
            libDepends = h: with h; [
              base deepseq lens monaderror-io monadio-plus more-unicode mtl tasty
              tasty-hunit tasty-plus text
            ];
            testDepends = h: with h; [ base tasty ];
          };

          # -- optparse-plus -----------

          optparse-plus          = optparse-plus-1-3;
          optparse-plus-1-3      = optparse-plus-1-3-2-42;
          optparse-plus-1-3-2-42 = callPkg "optparse-plus" "1.3.2.42" optparse-plus-src-1-3-2-42 {
            description = "manage info.yaml";
            libDepends = h: with h; [
              base data-textual extra lens nonempty-containers
              optparse-applicative parsec parsers terminal-size text

              base1 parsec-plus parser-plus textual-plus
            ];
          };

          # -- proclib -----------------

          proclib          = proclib-3-2;
          proclib-3-2      = proclib-3-2-3-53;
          proclib-3-2-3-53 = callPkg "proclib" "3.2.3.53" proclib-src-3-2-3-53 {
            description = "system-interaction library, for easier well-typed \"scripts\"";
            libDepends = h: with h; [
              aeson base base-unicode-symbols containers data-default
              data-textual hashable lens mono-traversable mtl
              optparse-applicative path process safe streaming tasty tasty-hunit
              template-haskell text text-printer transformers unix

              env-plus exited fpath has-callstack monaderror-io monadio-plus
              more-unicode natural optparse-plus parsec-plus tasty-plus tfmt
            ];
            testDepends = h: with h; [ base tasty ];
            postConfigure = ''
              substitute proto/ProcLib/Paths.hs src/ProcLib/Paths.hs \
                --replace __coreutils__ ${pkgs.coreutils}            \
                --replace __gnugrep__   ${pkgs.gnugrep}              \
                --replace __inetutils__ ${pkgs.inetutils}
            '';
          };

          # -- L11 (internal dependencies on L10) ----------

          # -- mockio-log --------------

          mockio-log         = mockio-log-0-1;
          mockio-log-0-1     = mockio-log-0-1-2-0;
          mockio-log-0-1-2-0 = callPkg "mockio-log" "0.1.2.0" mockio-log-src-0-1-2-0 {
            description = "Combined Mock IO actions with logging";
            libDepends = h: with h; [
              base base-unicode-symbols containers data-default data-textual
              deepseq exceptions lens logging-effect parsec prettyprinter
              prettyprinter-ansi-terminal tasty tasty-hunit text text-printer
              time

              base1t containers-plus log-plus mockio monaderror-io monadio-plus
              more-unicode parsec-plus parser-plus tasty-plus tfmt
            ];
            testDepends = h: with h; [ base tasty ];
          };

          # -- L12 (internal dependencies on L11) ----------

          # -- mockio-plus -------------

          mockio-plus          = mockio-plus-0-3;
          mockio-plus-0-3      = mockio-plus-0-3-12-0;
          mockio-plus-0-3-12-0 = callPkg "mockio-plus" "0.3.12.0"
                                         mockio-plus-src-0-3-12-0 {
            description = "MonadIO, Mocked, Logged, with Text";
            libDepends = h: with h; [
              base bytestring containers data-default data-textual directory
              exceptions filelock lens logging-effect mtl prettyprinter process
              safe tasty tasty-hunit text text-icu

              base1t containers-plus env-plus fpath fstat log-plus mockio
              mockio-log monaderror-io monadio-plus more-unicode tasty-plus tfmt
            ];
            testDepends = h: with h; [ base tasty ];
          };

          # -- L12 (internal dependencies on L11) ----------

          # -- stdmain -----------------

          stdmain          = stdmain-1-5;
          stdmain-1-5      = stdmain-1-5-13-0;
          stdmain-1-5-13-0 = callPkg "stdmain" "1.5.13.0" stdmain-src-1-5-13-0 {
            description = "standardized CLI wrapper";
            libDepends = h: with h; [
              aeson base base-unicode-symbols bytestring data-default
              data-textual deepseq lens logging-effect mtl optparse-applicative
              parsec prettyprinter tasty tasty-hunit text text-printer

              base1t containers-plus exited fpath fstat has-callstack log-plus
              mockio mockio-log mockio-plus monaderror-io monadio-plus
              more-unicode natural optparse-plus parsec-plus parser-plus
              tasty-plus tfmt
            ];
            testDepends = h: with h; [ base tasty ];
          };

          # END OF PACKAGES ----------------------------------------------------

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
