{
  description = "some haskell packages";
  inputs = {
    nixpkgs.url      = "github:nixos/nixpkgs/be44bf67"; # nixos-22.05 2022-10-15
    build-utils.url  = "github:sixears/flake-build-utils/r1.0.0.10";

    has-callstack.url = "github:sixears/has-callstack/r1.0.1.10";
    more-unicode.url = "github:sixears/more-unicode/r0.0.17.7";
    #    natural.url      = "/home/martyn/src/natural";
    natural.url = github:sixears/natural/r0.0.1.7;
  };
  outputs = { self, build-utils, nixpkgs
            , has-callstack, more-unicode, natural }: {
    inherit nixpkgs;

    natural = build-utils.lib.hOutputs natural nixpkgs "natural" {
      deps = { inherit more-unicode; };
      ghc  = p: p.ghc8107; # for tfmt
    };

    more-unicode = build-utils.lib.hOutputs more-unicode nixpkgs "more-unicode" {
      ghc = p: p.ghc8107; # for tfmt
    };

    has-callstack = build-utils.lib.hOutputs has-callstack nixpkgs "has-callstack" {
      deps = { inherit more-unicode natural; };
      ghc  = p: p.ghc8107; # for tfmt
    };
  };
}
