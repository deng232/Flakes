
{
  # every new file created must be git at least
  # staged ortherwise no such file or directory error
  description = "Fahim's nixos configuration";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nur.url = "github:nix-community/NUR";
    hypr-contrib.url = "github:hyprwm/contrib";
    hyprpicker.url = "github:hyprwm/hyprpicker";
    alejandra.url = "github:kamadorueda/alejandra/3.0.0";
    nix-gaming.url = "github:fufexan/nix-gaming";
    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, self,home-manager, ... }@inputs:
    let
      selfPkgs = import ./pkgs;
      system = "x86_64-linux";
      pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
  };
      deng = {
        name = "deng";
        isNormalUser = true;
        home = "/home/deng"; #default is /var/empty
        initialPassword = "123456789";
        description = "deng232";
        extraGroups = [
          "networkmanager"
          "wheel"
        ];
        shell = pkgs.zsh;
      };
    in
    {
      overlays.default = selfPkgs.overlay;
      nixosConfigurations = {

        virtualbox =
          let
            hostname = "virtualbox";
            primary_user = deng;
          in
          nixpkgs.lib.nixosSystem {
            specialArgs = {
              inherit self inputs hostname primary_user;
            };
            modules = [

              ./modules/core
              home-manager.nixosModules.home-manager
              {
                home-manager = {
                  useUserPackages = true;
                  useGlobalPkgs = true;
                  extraSpecialArgs = {
                    inherit inputs;
                  };
                  users.${primary_user.name} = {
                    imports = [ (import ./modules/home) ];
                    home.username = primary_user.name;
                    home.homeDirectory = primary_user.home; # don't know why it conflict with /nixos/common.nix
                    home.stateVersion = "22.11";
                    programs.home-manager.enable = true;
                  };
                };
              }
            ];
          }; # end of virtualbox
          laptop = let hostname = "laptop"; primary_user = deng; in
           nixpkgs.lib.nixosSystem {
            specialArgs = {
              inherit self inputs hostname primary_user;
            };
            modules = [
              ./modules/core
              home-manager.nixosModules.home-manager
              {
                home-manager = {
                  useUserPackages = true;
                  useGlobalPkgs = true;
                  extraSpecialArgs = {
                    inherit inputs;
                  };
                  users.${primary_user.name} = {
                    imports = [ (import ./modules/home) ];
                    home.username = primary_user.name;
                    home.homeDirectory = primary_user.home; # don't know why it conflict with /nixos/common.nix
                    home.stateVersion = "22.11";
                    programs.home-manager.enable = true;
                  };
                };
              }
            ];
          }; # end of laptop

      }; # end of nixosConfig

      #import ./modules/core/default.nix {
      #  inherit self nixpkgs inputs username email initialPassword;
      #};
    };
}