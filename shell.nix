# ########################################################################
#
#                 -- Generated with omgcmd --
#      (do not edit unless you know what you're doing)
#
#########################################################################

{ pkgs ? import ./default.nix { } }:
let
  nixpkgs = pkgs.nixpkgs;
  omgpkgs = pkgs.omgpkgs;
  dotnet-sdk = with nixpkgs.dotnetCorePackages;
    combinePackages [
      aspnetcore_5_0
      aspnetcore_6_0
      sdk_3_1
      sdk_5_0
      sdk_6_0
      runtime_5_0
      runtime_6_0
    ];
in with nixpkgs;
mkShell {
  buildInputs = [
    bash
    curl
    direnv
    dos2unix
    dotnet-sdk
    expect
    git
    git-lfs
    github-cli
    glibcLocales
    gnumake
    haskellPackages.ShellCheck
    jq
    nixfmt
    nix-prefetch-git
    openssh
    p7zip
    (python3.withPackages (ps: [ ps.setuptools ps.autopep8 ]))
    ripgrep
    shfmt
    which
    wget
  ];
}
