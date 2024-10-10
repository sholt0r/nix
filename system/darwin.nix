{ self, pkgs, config, ... }:
{
  imports = [
    ./packages.nix
  ];
  nixpkgs.config.allowUnfree = true;

  fonts.packages = with pkgs; [
    meslo-lgs-nf
  ];

  networking = {
    hostName = "mba";
    computerName = "mba";
  }

  programs = {
    zsh.enable = true;
  };

  system = {
    defaults = {
      CustomUserPreferences = {
        "com.apple.security.authorization" = {
          ignoreArd = 1;
        };
      };
    };
  };

  users.users.jstaples = {
    name = "jstaples";
    home = "/Users/jstaples";
  };

  nix.package = pkgs.nix;
  nix.settings.experimental-features = "nix-command flakes";
  nixpkgs.hostPlatform = "aarch64-darwin";
  security.pam.enableSudoTouchIdAuth = true;
  services.nix-daemon.enable = true;
  system.stateVersion = 5;
}
