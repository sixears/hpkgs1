{
  description = "some haskell packages";
  inputs = {
    nixpkgs.url     = github:nixos/nixpkgs/be44bf67; # nixos-22.05 2022-10-15
#    build-utils.url = github:sixears/flake-build-utils/r1.0.0.10;
build-utils.url = path:/home/martyn/src/flake-build-utils;

##    has-callstack.url = github:sixears/has-callstack/r1.0.1.10;
##    more-unicode.url  = github:sixears/more-unicode/r0.0.17.7;
##    natural.url       = github:sixears/natural/r0.0.1.7;
#    has-callstack.url = path:/home/martyn/src/has-callstack?flake=false;
    more-unicode.url  = path:/home/martyn/src/more-unicode;
#    natural.url       = path:/home/martyn/src/natural;
  };

  inputs.has-callstack = {
    type = "path";
    path = "/home/martyn/src/has-callstack";
    flake = false;
  };

##  inputs.more-unicode = {
##    type = "path";
##    path = "/home/martyn/src/more-unicode";
##    flake = false;
##  };

  inputs.natural = {
    type = "path";
    path = "/home/martyn/src/natural";
    flake = false;
  };

  outputs = { self, build-utils, nixpkgs
            , has-callstack, more-unicode, natural
            }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        system = system;
        overlays = [ (final: prev: { haskellPackages = prev.haskell.packages.ghc8107; }) ];
      };
    in {
#      nixpkgs = pkgs;

      packages.${system} = {
        natural =
          build-utils.lib.hPackage system pkgs "natural" natural {
            deps = { inherit more-unicode; };
          };

        more-unicode =
          build-utils.lib.hPackage system pkgs "more-unicode" more-unicode { };

        has-callstack =
          build-utils.lib.hPackage system pkgs "has-callstack" has-callstack {
            deps = { inherit more-unicode natural; };
          };
      };
  };
}
