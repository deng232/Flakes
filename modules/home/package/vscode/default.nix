{ pkgs, ... }: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions;[
      tobiasalthoff.atom-material-theme
      esbenp.prettier-vscode
      miguelsolorio.min-theme
      bradlc.vscode-tailwindcss
      jnoortheen.nix-ide
    ];
  };
}
