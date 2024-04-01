{ pkgs, ... }: {
  programs.vscode = {
    enable = true;
     package = pkgs.vscode;
    extensions = with pkgs.vscode-extensions;[
      esbenp.prettier-vscode
      bradlc.vscode-tailwindcss
      jnoortheen.nix-ide
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
      {
        name = "min-theme";
        publisher = "miguelsolorio";
        version = "1.5.0";
        sha256 = "DF/9OlWmjmnZNRBs2hk0qEWN38RcgacdVl9e75N8ZMY=";
      }
    ];
    userSettings = {
       "window.titleBarStyle" = "custom";
    };
  };
}
