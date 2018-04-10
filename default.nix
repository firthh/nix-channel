{ system ? builtins.currentSystem }:
let
   pkgs = import <nixpkgs> { inherit system; };

   callPackage = pkgs.lib.callPackageWith (pkgs // self);

   self = {                                                                             
      postgres_9_4_17 = callPackage ./postgres { };
      node_9_11_1 = callPackage ./node {};
   };
   in self