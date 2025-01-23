{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };
  outputs = { nixpkgs, utils, ... }:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShell = with pkgs; mkShell {
          buildInputs = [
            pnpm
            nodejs_22
            just
            nodePackages.typescript-language-server
            astro-language-server
            tailwindcss-language-server
          ] ++ lib.optionals stdenv.isDarwin [ libiconv llvmPackages.bintools ];
        };
      });
}


