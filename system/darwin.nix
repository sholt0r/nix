{ self, pkgs, config, ... }:

{
  imports = [
    ./touch-id.nix
  ];
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = [
    pkgs.curl
    pkgs.dig
    pkgs.eza
    pkgs.fd
    pkgs.gcc
    pkgs.gh
    pkgs.git-filter-repo
    pkgs.go
    pkgs.gnumake
    pkgs.mkalias
    pkgs.nixfmt-rfc-style
    pkgs.nodejs
    pkgs.openssl
    pkgs.pam-reattach
    pkgs.python3
    pkgs.ruby
    pkgs.rustup
    pkgs.stow
    pkgs.powershell
    pkgs.tshark
    pkgs.unzip
    pkgs.wget2
    pkgs.whois
  ];
  
  fonts.packages = with pkgs; [
    meslo-lgs-nf
  ];

  users.users.jstaples = {
    name = "jstaples";
    home = "/Users/jstaples";
  };

  programs = {
    zsh.enable = true;
  };

  nix.package = pkgs.nix;
  nix.settings.experimental-features = "nix-command flakes";
  nixpkgs.hostPlatform = "aarch64-darwin";
  security.pam.enableSudoTouchId = true;
  services.nix-daemon.enable = true;
  system.stateVersion = 5;
}
