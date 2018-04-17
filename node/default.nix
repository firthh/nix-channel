{ stdenv, fetchurl, pkgs }:
let
  nodeVersion = "9.11.1";
in pkgs.nodejs-9_x.overrideAttrs (oldAttrs: {
       version = nodeVersion;
       name = "nodejs-${nodeVersion}";
       src = fetchurl {
           url = "https://nodejs.org/download/release/v${nodeVersion}/node-v${nodeVersion}.tar.xz";
           sha256 = null;
       };
  })