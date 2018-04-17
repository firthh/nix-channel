{ system ? builtins.currentSystem }:

let
   pkgs = import <nixpkgs> { inherit system; };

   callPackage = pkgs.lib.callPackageWith (pkgs // self);

   self = {                                                                             
      postgresql-9_4_17 = callPackage ./postgres/default.nix {};
      nodejs-9_11_1 = callPackage ./node/default.nix {};
   };
   in self