{ stdenv, fetchurl, pkgs }:

pkgs.postgresql94.overrideAttrs(oldAttrs: {
     version = "9.4.17";
     name = "postgresql-9.4.17";
     src = fetchurl {
      url = "mirror://postgresql/source/v9.4.17/postgresql-9.4.17.tar.bz2";
      sha256 = "7a320cd335052b840d209dc9688f09965763351c590e3cc7bf577591179fd7c6";
     };
   })