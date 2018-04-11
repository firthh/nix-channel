{ stdenv, fetchurl, pkgs }:
let
  postgresVersion = "9.4.17";
in pkgs.postgresql94.overrideAttrs(oldAttrs: {
     version = postgresVersion;
     name = "postgresql-${postgresVersion}";
     src = fetchurl {
         url = "mirror://postgresql/source/v${postgresVersion}/postgresql-${postgresVersion}.tar.bz2";
         sha256 = "7a320cd335052b840d209dc9688f09965763351c590e3cc7bf577591179fd7c6";
     };
})