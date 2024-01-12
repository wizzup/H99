{ pkgs ? import <nixpkgs> {}}:

with pkgs;
let
  py3deps = with python3Packages; python3.buildEnv.override {
    extraLibs = [
      beautifulsoup4
      requests
    ];
  };

  py3tools = with python3Packages; [
      jedi
      python-lsp-server
  ];
in
  mkShell {
    buildInputs = [
      py3deps py3tools
    ];

    shellHook = ''
      export PS1="\[\033[1;32m\][$name:\W]\n$ \[\033[0m\]"
    '';
}
