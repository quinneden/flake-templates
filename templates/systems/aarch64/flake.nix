{
  description = "";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixpkgs-unstable";
  };

  outputs =
    { nixpkgs, ... }:
    let
      inherit (nixpkgs) lib;

      systems = [
        "aarch64-darwin"
        "aarch64-linux"
      ];

      forEachSystem = f: lib.genAttrs systems (system: f { pkgs = import nixpkgs { inherit system; }; });
    in
    { };
}
