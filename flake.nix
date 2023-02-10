# to build a pkg, cd to the dir containing this flake, and
# $ nix build .#atreus

# to add a pkg, cd to the src dir of that pkg, and run
# $ cabal2callPkg
# that will give you three stanzas to add here

{
  description = "homegrown haskell packages";
  inputs = {
    nixpkgs.url     = github:nixos/nixpkgs/be44bf67; # nixos-22.05 2022-10-15
    flake-utils.url = github:numtide/flake-utils/c0e246b9;

    acct-src-0-0-0-0 = {
      type  = "github";
      owner = "sixears";
      repo  = "acct";
      ref   = "r0.0.0.0";
      flake = false;
    };
    atreus-src-1-0-2-1 = {
      type  = "github";
      owner = "sixears";
      repo  = "atreus";
      ref   = "r1.0.2.1";
      flake = false;
    };
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
    boundedn-src-1-1-7-0 = {
      type  = "github";
      owner = "sixears";
      repo  = "boundedn";
      ref   = "r1.1.7.0";
      flake = false;
    };
    containers-plus-src-0-0-10-39 = {
      type  = "github";
      owner = "sixears";
      repo  = "containers-plus";
      ref   = "r0.0.10.39";
      flake = false;
    };
    date-imprecise-src-1-0-0-3 = {
      type  = "github";
      owner = "sixears";
      repo  = "date-imprecise";
      ref   = "r1.0.0.3";
      flake = false;
    };
    dhall-plus-src-0-0-2-1 = {
      type  = "github";
      owner = "sixears";
      repo  = "dhall-plus";
      ref   = "r0.0.2.1";
      flake = false;
    };
    domainnames-src-0-1-2-0 = {
      type  = "github";
      owner = "sixears";
      repo  = "domainnames";
      ref   = "r0.1.2.0";
      flake = false;
    };
    duration-src-1-0-0-0 = {
      type  = "github";
      owner = "sixears";
      repo  = "duration";
      ref   = "r1.0.0.0";
      flake = false;
    };
    env-fpath-src-0-0-0-1 = {
      type  = "github";
      owner = "sixears";
      repo  = "env-fpath";
      ref   = "r0.0.0.1";
      flake = false;
    };
    env-plus-src-1-0-7-37 = {
      type  = "github";
      owner = "sixears";
      repo  = "env-plus";
      ref   = "r1.0.7.37";
      flake = false;
    };
    equalish-src-0-0-0-0 = {
      type  = "github";
      owner = "sixears";
      repo  = "equalish";
      ref   = "r0.0.0.0";
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
    handbrake-src-1-0-3-0 = {
      type  = "github";
      owner = "sixears";
      repo  = "handbrake";
      ref   = "r1.0.3.0";
      flake = false;
    };
    has-callstack-src-1-0-1-19 = {
      type  = "github";
      owner = "sixears";
      repo  = "has-callstack";
      ref   = "r1.0.1.19";
      flake = false;
    };
    hostsdb-src-0-1-1-4 = {
      type  = "github";
      owner = "sixears";
      repo  = "hostsdb";
      ref   = "r0.1.1.4";
      flake = false;
    };
    index-src-1-0-1-26 = {
      type  = "github";
      owner = "sixears";
      repo  = "index";
      ref   = "r1.0.1.26";
      flake = false;
    };
    ip4-src-0-0-0-2 = {
      type  = "github";
      owner = "sixears";
      repo  = "ip4";
      ref   = "r0.0.0.2";
      flake = false;
    };
    log-plus-src-0-0-4-4 = {
      type  = "github";
      owner = "sixears";
      repo  = "log-plus";
      ref   = "r0.0.4.4";
      flake = false;
    };
    mac-address-src-0-0-0-3 = {
      type  = "github";
      owner = "sixears";
      repo  = "mac-address";
      ref   = "r0.0.0.3";
      flake = false;
    };
    minfo-src-1-0-3-7 = {
      type  = "github";
      owner = "sixears";
      repo  = "minfo";
      ref   = "r1.0.3.7";
      flake = false;
    };
    mockio-cmds-inetutils-src-1-0-0-0 = {
      type  = "github";
      owner = "sixears";
      repo  = "mockio-cmds-inetutils";
      ref   = "r1.0.0.0";
      flake = false;
    };
    mockio-cmds-rsync-src-1-0-0-0 = {
      type  = "github";
      owner = "sixears";
      repo  = "mockio-cmds-rsync";
      ref   = "r1.0.0.0";
      flake = false;
    };
    mockio-cmds-util-linux-src-1-0-1-3 = {
      type  = "github";
      owner = "sixears";
      repo  = "mockio-cmds-util-linux";
      ref   = "r1.0.1.3";
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
    mockio-plus-src-0-3-12-1 = {
      type  = "github";
      owner = "sixears";
      repo  = "mockio-plus";
      ref   = "r0.3.12.1";
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
    pcre-src-0-0-4-1 = {
      type  = "github";
      owner = "sixears";
      repo  = "pcre";
      ref   = "r0.0.4.1";
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
    rename-src-0-0-1-0 = {
      type  = "github";
      owner = "sixears";
      repo  = "rename";
      ref   = "r0.0.1.0";
      flake = false;
    };
    single-src-0-0-1-0 = {
      type  = "github";
      owner = "sixears";
      repo  = "single";
      ref   = "r0.0.1.0";
      flake = false;
    };
    srt-adjust-src-1-0-0-7 = {
      type  = "github";
      owner = "sixears";
      repo  = "srt-adjust";
      ref   = "r1.0.0.7";
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
    tinydns-src-0-1-1-2 = {
      type  = "github";
      owner = "sixears";
      repo  = "tinydns";
      ref   = "r0.1.1.2";
      flake = false;
    };
    yaml-plus-src-1-0-1-1 = {
      type  = "github";
      owner = "sixears";
      repo  = "yaml-plus";
      ref   = "r1.0.1.1";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, flake-utils

            , acct-src-0-0-0-0
            , atreus-src-1-0-2-1
            , base0-src-0-0-4-11
            , base0t-src-0-0-1-14
            , base1-src-0-0-9-34
            , base1t-src-0-0-5-36
            , boundedn-src-1-1-7-0
            , containers-plus-src-0-0-10-39
            , date-imprecise-src-1-0-0-3
            , dhall-plus-src-0-0-2-1
            , domainnames-src-0-1-2-0
            , duration-src-1-0-0-0
            , env-fpath-src-0-0-0-1
            , env-plus-src-1-0-7-37
            , equalish-src-0-0-0-0
            , exited-src-1-0-4-23
            , fpath-src-1-3-2-39
            , fstat-src-1-0-2-26
            , handbrake-src-1-0-3-0
            , has-callstack-src-1-0-1-19
            , hostsdb-src-0-1-1-4
            , index-src-1-0-1-26
            , ip4-src-0-0-0-2
            , log-plus-src-0-0-4-4
            , mac-address-src-0-0-0-3
            , minfo-src-1-0-3-7
            , mockio-cmds-inetutils-src-1-0-0-0
            , mockio-cmds-rsync-src-1-0-0-0
            , mockio-cmds-util-linux-src-1-0-1-3
            , mockio-src-0-0-4-4
            , mockio-log-src-0-1-2-0
            , mockio-plus-src-0-3-12-1
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
            , pcre-src-0-0-4-1
            , proclib-src-3-2-3-53
            , quasiquoting-src-1-0-1-32
            , rename-src-0-0-1-0
            , single-src-0-0-1-0
            , srt-adjust-src-1-0-0-7
            , stdmain-src-1-5-13-0
            , tasty-plus-src-1-5-2-24
            , textual-plus-src-1-0-2-27
            , tfmt-src-0-2-7-25
            , tinydns-src-0-1-1-2
            , yaml-plus-src-1-0-1-1
            }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          system = system;
          overlays = [
            (final: prev: {haskellPackages = prev.haskell.packages.ghc8107; })
          ];
        };
        hpkgs           = pkgs.haskellPackages;
        hlib            = pkgs.haskell.lib;
        writeHaskellBin = pkgs.writers.writeHaskellBin;

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
        lib = rec {
          ghcWithPackages = hpkgs.ghcWithPackages;
          writeHaskellBin = pkgs.writers.writeHaskellBin;

          mkHBin = name: srcfn: { libs ? (_: []), replace ? (_: {}) }:
            let
              src =
                let
                  repl = replace packages;
                  repl_from = builtins.attrNames repl;
                  repl_to   = map (x: repl.${x}) repl_from;
                in
                  builtins.replaceStrings repl_from repl_to
                    (builtins.readFile srcfn);
            in {
              pkg = writeHaskellBin name { libraries = libs packages; } src;
              dev = pkgs.mkShell {
                packages = [ (ghcWithPackages (_: libs packages)) ];
              };
            };

          # To allow clients to build against the same haskell base set (e.g.,
          # the same ghc version).  Originally this was part of `packages`, but
          # that causes issues for anything that iterates over packages, e.g.,
          # the default development shell, or nix flake show
          inherit hpkgs;
          nixpkgs = pkgs;
        };

        packages = rec {

          # -- L0 (no internal dependencies) ---------------

          # -- atreus ------------------

          atreus         = atreus-1-0;
          atreus-1-0     = atreus-1-0-2-1;
          atreus-1-0-2-1 = callPkg "atreus" "1.0.2.1" atreus-src-1-0-2-1 {
            description = "draw diagram of atreus keyboard layout";
            libDepends = h: with h; [
              aeson base base-unicode-symbols colour data-default data-textual
              diagrams-core diagrams-lib diagrams-svg lens mono-traversable mtl
              SVGFonts text-printer
            ];
          };

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

          # -- equalish ----------------

          equalish         = equalish-0-0;
          equalish-0-0     = equalish-0-0-0-0;
          equalish-0-0-0-0 = callPkg "equalish" "0.0.0.0" equalish-src-0-0-0-0 {
            description = "Like Eq, but with explanations when not equal";
            libDepends = h: with h; [ base base-unicode-symbols more-unicode ];
          };

          # -- natural -----------------

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
          parsec-plus-base-1-0-5-23 =
            callPkg "parsec-plus-base" "1.0.5.23" parsec-plus-base-src-1-0-5-23 {
              description = "Parsecable class, and utilities; base version without file parsing";
              libDepends = h: with h; [
                base base-unicode-symbols data-textual deepseq lens mtl parsec
                text-printer

                has-callstack monaderror-io more-unicode
              ];
              testDepends = h: with h; [ base ];
            };

          # -- textual-plus ------------

          textual-plus          = textual-plus-1-0;
          textual-plus-1-0      = textual-plus-1-0-2-27;
          textual-plus-1-0-2-27 =
            callPkg "textual-plus" "1.0.2.27" textual-plus-src-1-0-2-27 {
              description = "manage info.yaml";
              libDepends = h: with h; [
                base base-unicode-symbols data-textual mtl text tfmt
              ];
            };

          # -- L5 (internal dependencies on L4) ------------

          # -- quasiquoting ------------

          quasiquoting          = quasiquoting-1-0;
          quasiquoting-1-0      = quasiquoting-1-0-1-32;
          quasiquoting-1-0-1-32 =
            callPkg "quasiquoting" "1.0.1.32" quasiquoting-src-1-0-1-32 {
              description = "manage info.yaml";
              libDepends = h: with h; [
                base base-unicode-symbols data-default lens template-haskell
                text

                monaderror-io more-unicode parsec-plus-base tfmt
              ];
            };

          # -- tasty-plus --------------

          tasty-plus          = tasty-plus-1-5;
          tasty-plus-1-5      = tasty-plus-1-5-2-24;
          tasty-plus-1-5-2-24 =
            callPkg "tasty-plus" "1.5.2.24" tasty-plus-src-1-5-2-24 {
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

          # -- boundedn ----------------

          boundedn         = boundedn-1-1;
          boundedn-1-1     = boundedn-1-1-7-0;
          boundedn-1-1-7-0 = callPkg "boundedn" "1.1.7.0" boundedn-src-1-1-7-0 {
            description = "Type-Level Bounded Natural Numbers";
            libDepends = h: with h; [
              base base-unicode-symbols deepseq finite-typelits genvalidity
              ghc-typelits-extra lens mtl QuickCheck tasty tasty-hunit
              tasty-quickcheck template-haskell validity

              more-unicode number tasty-plus tfmt
            ];
            testDepends = h: with h; [
              base base-unicode-symbols optparse-applicative tasty
              tasty-hunit

              more-unicode tasty-plus
            ];
          };

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

          # -- mac-address -------------

          mac-address         = mac-address-0-0;
          mac-address-0-0     = mac-address-0-0-0-3;
          mac-address-0-0-0-3 =
            callPkg "mac-address" "0.0.0.3" mac-address-src-0-0-0-3 {
              description = "MAC Address type, with dhall support";
              libDepends = h: with h; [
                aeson base base-unicode-symbols data-default data-textual
                deepseq dhall either parsec parsers QuickCheck scientific tasty
                tasty-hunit tasty-quickcheck template-haskell text text-printer
                yaml

                more-unicode parsec-plus parsec-plus-base quasiquoting
                tasty-plus textual-plus tfmt
              ];
              testDepends = h: with h; [ base tasty ];
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

          # -- duration ----------------

          duration         = duration-1-0;
          duration-1-0     = duration-1-0-0-0;
          duration-1-0-0-0 = callPkg "duration" "1.0.0.0" duration-src-1-0-0-0 {
            description = "A mostly type-safe Duration type";
            libDepends = h: with h; [
              base base-unicode-symbols data-textual lens parsers QuickCheck
              tasty tasty-hunit tasty-quickcheck text text-printer

              boundedn more-unicode non-empty-containers number parser-plus
              tasty-plus tfmt
            ];
            testDepends = h: with h; [
              base base-unicode-symbols optparse-applicative tasty tasty-hunit

              more-unicode tasty-plus
            ];
          };

          # -- env-fpath ---------------

          env-fpath         = env-fpath-0-0;
          env-fpath-0-0     = env-fpath-0-0-0-1;
          env-fpath-0-0-0-1 = callPkg "env-fpath" "0.0.0.1"
                                      env-fpath-src-0-0-0-1 {
            description = "Utilities for working with the environment, path + fpath";
            libDepends = h: with h; [
              base base-unicode-symbols data-textual lens mtl safe split tasty
              tasty-hunit

              env-plus fpath monaderror-io monadio-plus more-unicode tasty-plus
              tfmt
            ];
            testDepends = h: with h; [ base tasty ];
          };

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

          # -- yaml-plus ---------------

          yaml-plus         = yaml-plus-1-0;
          yaml-plus-1-0     = yaml-plus-1-0-1-1;
          yaml-plus-1-0-1-1 = callPkg "yaml-plus" "1.0.1.1"
                                       yaml-plus-src-1-0-1-1 {
            description = "Utilities for working with YAML";
            libDepends = h: with h; [
              aeson base base-unicode-symbols bytestring data-textual lens
              ListLike mtl scientific tasty tasty-hunit text text-printer
              utf8-string yaml

              fpath has-callstack monaderror-io more-unicode natural tasty-plus
              tfmt
            ];
            testDepends = h: with h; [
              base base-unicode-symbols optparse-applicative tasty tasty-hunit

              more-unicode tasty-plus
            ];
          };

          # -- L11 (internal dependencies on L10) ----------

          # -- data-imprecise ----------

          date-imprecise         = date-imprecise-1-0;
          date-imprecise-1-0     = date-imprecise-1-0-0-3;
          date-imprecise-1-0-0-3 = callPkg "date-imprecise" "1.0.0.3"
                                           date-imprecise-src-1-0-0-3 {
            description = "manage info.yaml";
            libDepends = h: with h; [
              aeson base base-unicode-symbols data-default data-textual deepseq
              lens mtl parsers QuickCheck scientific tasty tasty-hunit
              tasty-quickcheck template-haskell text text-printer time yaml

              boundedn monaderror-io more-unicode number parsec-plus parser-plus
              quasiquoting tasty-plus tfmt yaml-plus
            ];
            testDepends = h: with h; [
              base base-unicode-symbols optparse-applicative tasty tasty-hunit

              more-unicode tasty-plus
            ];
          };

          # -- dhall-plus --------------

          dhall-plus         = dhall-plus-0-0;
          dhall-plus-0-0     = dhall-plus-0-0-2-1;
          dhall-plus-0-0-2-1 = callPkg "dhall-plus" "0.0.2.1" dhall-plus-src-0-0-2-1 {
            description = "Utilities for working with Dhall";
            libDepends = h: with h; [
              base base-unicode-symbols data-textual deepseq dhall
              enclosed-exceptions lens mtl tasty tasty-hunit text text-printer

              fpath has-callstack monaderror-io monadio-plus more-unicode
              tasty-plus
            ];
            testDepends = h: with h; [ base tasty ];
          };

          # -- ip4 ---------------------

          ip4         = ip4-0-0;
          ip4-0-0     = ip4-0-0-0-2;
          ip4-0-0-0-2 = callPkg "ip4" "0.0.0.2" ip4-src-0-0-0-2 {
            description = "IPv4 data-type with JSON, Textual, YAML & DHALL support";
            libDepends = h: with h; [
              aeson base base-unicode-symbols data-default data-textual deepseq
              dhall either network-ip parsec template-haskell text text-printer
              yaml

              more-unicode parsec-plus quasiquoting
            ];
          };

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
          optparse-plus-1-3-2-42 =
            callPkg "optparse-plus" "1.3.2.42" optparse-plus-src-1-3-2-42 {
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

          # -- L12 (internal dependencies on L11) ----------

          # -- domainnames -------------

          domainnames         = domainnames-0-1;
          domainnames-0-1     = domainnames-0-1-2-0;
          domainnames-0-1-2-0 = callPkg "domainnames" "0.1.2.0"
                                        domainnames-src-0-1-2-0 {
            description = "domain names data types";
            libDepends = h: with h; [
              aeson base base-unicode-symbols containers data-default
              data-textual deepseq dhall hashable lens mtl parsers tasty
              tasty-hunit template-haskell text text-printer yaml

              base1 has-callstack ip4 more-unicode non-empty-containers proclib
              quasiquoting tasty-plus tfmt
            ];
            testDepends = h: with h; [
              base base-unicode-symbols optparse-applicative tasty

              more-unicode tasty-plus
            ];
          };

          # -- minfo -------------------

          minfo         = minfo-1-0;
          minfo-1-0     = minfo-1-0-3-7;
          minfo-1-0-3-7 = callPkg "minfo" "1.0.3.7" minfo-src-1-0-3-7 {
            description = "manage info.yaml";
            libDepends = h: with h; [
              aeson aeson-pretty base base-unicode-symbols bytestring
              data-textual lens mtl optparse-applicative scientific tasty
              tasty-hunit text text-printer vector yaml

              date-imprecise fpath has-callstack index monaderror-io
              monadio-plus more-unicode natural non-empty-containers
              optparse-plus tasty-plus tfmt yaml-plus
            ];
            testDepends = h: with h; [
              base base-unicode-symbols optparse-applicative tasty tasty-hunit

              more-unicode tasty-plus
            ];
          };

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

          # -- srt-adjust --------------

          srt-adjust         = srt-adjust-1-0;
          srt-adjust-1-0     = srt-adjust-1-0-0-7;
          srt-adjust-1-0-0-7 = callPkg "srt-adjust" "1.0.0.7"
                                        srt-adjust-src-1-0-0-7 {
            description = "adjust SRT subtitle file timing";
            libDepends = h: with h; [
              base base-unicode-symbols data-textual finite-typelits lens
              mono-traversable mtl optparse-applicative parsec parsers
              QuickCheck tasty tasty-hunit tasty-quickcheck
              text text-printer

              boundedn duration exited fpath monaderror-io monadio-plus
              more-unicode non-empty-containers number optparse-plus parsec-plus
              parser-plus tasty-plus tfmt
            ];
            testDepends = h: with h; [
              base base-unicode-symbols optparse-applicative tasty tasty-hunit

              more-unicode tasty-plus
            ];
          };


          # -- L13 (internal dependencies on L12) ----------

          # -- hostsdb -----------------

          hostsdb         = hostsdb-0-1;
          hostsdb-0-1     = hostsdb-0-1-1-4;
          hostsdb-0-1-1-4 = callPkg "hostsdb" "0.1.1.4" hostsdb-src-0-1-1-4 {
            description = "hosts info as a single configuration";
            libDepends = h: with h; [
              aeson base base-unicode-symbols containers data-textual deepseq
              dhall lens mono-traversable mtl path proclib tasty tasty-hunit
              text text-printer unordered-containers yaml

              containers-plus dhall-plus domainnames equalish fpath
              has-callstack ip4 mac-address monaderror-io more-unicode
              non-empty-containers tasty-plus textual-plus tfmt
            ];
            testDepends = h: with h; [
              base base-unicode-symbols more-unicode optparse-applicative tasty
              tasty-plus
            ];
          };

          # -- mockio-plus -------------

          mockio-plus          = mockio-plus-0-3;
          mockio-plus-0-3      = mockio-plus-0-3-12-1;
          mockio-plus-0-3-12-1 = callPkg "mockio-plus" "0.3.12.1"
                                         mockio-plus-src-0-3-12-1 {
            description = "MonadIO, Mocked, Logged, with Text";
            libDepends = h: with h; [
              base bytestring containers data-default data-textual directory
              exceptions filelock lens logging-effect mtl prettyprinter process
              safe tasty tasty-hunit text text-icu

              base1t containers-plus env-plus fpath fstat log-plus mockio
              mockio-log monaderror-io monadio-plus more-unicode tasty-plus tfmt
            ];
            testDepends = h: with h; [ base tasty ];

            postConfigure = ''
              substitute proto/MockIOPlus/Paths.hs src/MockIOPlus/Paths.hs \
                --replace __gnugrep__   ${pkgs.gnugrep}
            '';
          };

          # -- L14 (internal dependencies on L13) ----------

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

          # -- L15 (internal dependencies on L14) ----------

          # -- acct --------------------

          acct         = acct-0-0;
          acct-0-0     = acct-0-0-0-0;
          acct-0-0-0-0 = callPkg "acct" "0.0.0.0" acct-src-0-0-0-0 {
            description = "parse & manage finance files";
            libDepends = h: with h; [
              base bytestring containers data-default data-textual deepseq
              genvalidity lens logging-effect mtl optparse-applicative parsers
              prettyprinter QuickCheck safe tasty-hunit tasty-quickcheck
              template-haskell text text-printer time trifecta validity

              base1t exited fpath has-callstack log-plus mockio mockio-log
              monaderror-io monadio-plus more-unicode natural optparse-plus
              parsec-plus parser-plus quasiquoting stdmain tasty-plus tfmt
            ];
            testDepends = h: with h; [ base tasty ];
          };

          # -- handbrake ---------------

          handbrake         = handbrake-1-0;
          handbrake-1-0     = handbrake-1-0-3-0;
          handbrake-1-0-3-0 = callPkg "handbrake" "1.0.3.0"
                                      handbrake-src-1-0-3-0 {
            description = "Haskell interface to HandBrakeCLI, and utility scripting";
            libDepends = h: with h; [
              base base-unicode-symbols data-textual deepseq lens logging-effect
              mtl optparse-applicative parsers range tasty tasty-hunit text
              text-printer

              fpath log-plus mockio mockio-log mockio-plus monaderror-io
              monadio-plus more-unicode natural optparse-plus parsec-plus
              parser-plus stdmain tasty-plus tfmt
            ];
            testDepends = h: with h; [ base tasty ];
          };

          # -- mockio-cmds-inetutils ---

          mockio-cmds-inetutils         = mockio-cmds-inetutils-1-0;
          mockio-cmds-inetutils-1-0     = mockio-cmds-inetutils-1-0-0-0;
          mockio-cmds-inetutils-1-0-0-0 =
            callPkg "mockio-cmds-inetutils" "1.0.0.0"
                    mockio-cmds-inetutils-src-1-0-0-0 {
            description = "MockIO wrappers for inetutils cmds";
            libDepends = h: with h; [
              data-textual lens logging-effect mtl safe text

              base1t domainnames fpath log-plus mockio mockio-log mockio-plus
              monadio-plus stdmain
            ];
          };

          # -- mockio-cmds-rsync -------

          mockio-cmds-rsync         = mockio-cmds-rsync-1-0;
          mockio-cmds-rsync-1-0     = mockio-cmds-rsync-1-0-0-0;
          mockio-cmds-rsync-1-0-0-0 =
            callPkg "mockio-cmds-rsync" "1.0.0.0"
                    mockio-cmds-rsync-src-1-0-0-0 {
              description = "MockIO wrappers for rsync";
              libDepends = h: with h; [
                base base1t containers deepseq lens logging-effect mtl safe
                text-printer

                base1t fpath log-plus mockio mockio-log mockio-plus monadio-plus
                stdmain
              ];

              postConfigure = ''
                substitute proto/MockIO/Cmds/RSync/Paths.hs \
                           src/MockIO/Cmds/RSync/Paths.hs   \
                  --replace __rsync__   ${pkgs.rsync}
              '';
            };

          # -- mockio-cmds-util-linux --

          mockio-cmds-util-linux         = mockio-cmds-util-linux-1-0;
          mockio-cmds-util-linux-1-0     = mockio-cmds-util-linux-1-0-1-3;
          mockio-cmds-util-linux-1-0-1-3 =
            callPkg "mockio-cmds-util-linux" "1.0.1.3"
                    mockio-cmds-util-linux-src-1-0-1-3 {
              description = "MockIO wrappers for util-linux cmds";
              libDepends = h: with h; [
                aeson base bytestring lens logging-effect mtl parsec parsers
                safe text text-printer

                base1t fpath log-plus mockio mockio-log mockio-plus monadio-plus
                parsec-plus stdmain
              ];

              postConfigure = ''
                for f in $( ${pkgs.findutils}/bin/find proto/ -type f \
                                                              -name \*.hs ); do
                  t=src/"''${f#proto/}"
                  substitute "$f" "$t" \
                    --replace __util-linux__ ${pkgs.util-linux}
                done
              '';
            };

          # -- pcre --------------------

          pcre         = pcre-0-0;
          pcre-0-0     = pcre-0-0-4-1;
          pcre-0-0-4-1 = callPkg "pcre" "0.0.4.1" pcre-src-0-0-4-1 {
            description = "handle PCRE-based REs, including textual replacements";
            libDepends = h: with h; [
              array base hashable lens parsec parsers regex regex-with-pcre
              template-haskell text text-printer unordered-containers

              base1t monaderror-io log-plus mockio-plus monadio-plus
              optparse-plus parsec-plus-base parsec-plus parser-plus
              quasiquoting stdmain
            ];
            testDepends = h: with h; [ base tasty ];
          };

          # -- tinydns -----------------

          tinydns         = tinydns-0-1;
          tinydns-0-1     = tinydns-0-1-1-2;
          tinydns-0-1-1-2 = callPkg "tinydns" "0.1.1.2" tinydns-src-0-1-1-2 {
            description = "tinydns management";
            libDepends = h: with h; [
              base base-unicode-symbols data-default data-textual lens mtl
              optparse-applicative path tasty tasty-hunit text
              text-printer unordered-containers

              dhall-plus domainnames fpath has-callstack hostsdb ip4 mac-address
              monaderror-io monadio-plus more-unicode natural proclib stdmain
              tasty-plus tfmt
            ];

            postConfigure = ''
              shopt -s globstar

              for i in proto/**/.hs; do
                substitute "$i" src/"''${i#proto/}" \
                  --replace __djbdns__ ${pkgs.djbdns}
              done
            '';

            testDepends = h: with h; [
              base base-unicode-symbols lens monaderror-io more-unicode natural
              optparse-applicative proclib tasty tasty-plus
            ];
          };

          # -- L16 (internal dependencies on L15) ----------

          # -- rename ------------------

          rename         = rename-0-0;
          rename-0-0     = rename-0-0-1-0;
          rename-0-0-1-0 = callPkg "rename" "0.0.1.0" rename-src-0-0-1-0 {
            description = "rename files according to regular expressions";
            libDepends = h: with h; [
              base containers extra logging-effect optparse-applicative parsec
              parsers regex-with-pcre tasty-hunit text

              base1t containers-plus env-fpath env-plus fpath log-plus
              mockio-log mockio-plus monaderror-io monadio-plus natural
              non-empty-containers optparse-plus parsec-plus-base parsec-plus
              parser-plus pcre stdmain tasty-plus
            ];
            testDepends = h: with h; [ base tasty ];
          };

          # END OF PACKAGES ----------------------------------------------------
        }
        ; # packages = rec { ...

        # run, say, nix develop ~/src/hpkgs1/flake.nix#tasty-plus

        devShells =
          (builtins.mapAttrs (_: p: hpkgs.shellFor {
            packages = _: pkgs.lib.debug.traceSeqN 2 [p] [p];
            buildInputs = with hpkgs; [
              haskell-language-server ## you must build it with your ghc to work
              ghcid cabal-install
            ];
          }) packages);

        # DEFAULT SHELL
        # all the packages used by any packages cited within this flake,
        # plus extras named below
        # https://input-output-hk.github.io/haskell.nix/tutorials/development.html
        devShell = # hpkgs.ghcWithPackages (ps: with ps; [criterion]);
          let
            # pp = ([] ++ builtins.attrValues packages);
          # an extra, dummy package for my own packages that we want in the
          # default shell
          myHaskellPkgs_ =
            hpkgs.mkDerivation {
              pname = "myHaskellPkgs"; version = "0.0.0.0";
              description = "mine own haskell packages";
              src = ./.;
              libraryHaskellDepends =
let y =
                builtins.attrValues packages;
in
pkgs.lib.debug.traceSeqN 4 { inherit y; } y;
              license = pkgs.lib.licenses.mit;
              };

          # an extra, dummy package for haskellPackages that we want in our
          # default shell, but that aren't a dependency of any of our existing
          # packages
          extra_ =
            hpkgs.mkDerivation {
              pname = "extra"; version = "0.0.0.0"; description = "dummy pkg";
              src = ./.;
              libraryHaskellDepends =
let x =

                with hpkgs; [
                # containers-unicode-symbols
##                criterion dhall diagrams Diff doctest finite-typelits freer
##                genvalidity-hspec ghc-typelits-extra hostaddress hostname
##                http-client inflections keys ListLike markdown-unlit monad-loops
##
##                network-ip pipes rainbow range regex-applicative regex-pcre
##                regex-with-pcre rio shake SVGFonts tagsoup
##                tasty-hspec timers xmonad-contrib yaml
tasty-hspec
                ];
in
pkgs.lib.debug.traceSeqN 3 { inherit x; } x;
              license = pkgs.lib.licenses.mit;
              };
          in
            hpkgs.shellFor {
              packages = _: pkgs.lib.debug.traceSeqN 2 [ myHaskellPkgs_ ] [ myHaskellPkgs_ ];
           buildInputs = with hpkgs; [
              haskell-language-server ## you must build it with your ghc to work
              ghcid cabal-install
            ];
 #              buildInputs = with hpkgs; [ packages.yaml-plus ]; # criterion ];
              # Prevents cabal from choosing alternate plans, so that
              # *all* dependencies are provided by Nix.
              exactDeps = true;
            };
      } # let pkgs ... in ...
    );
}

