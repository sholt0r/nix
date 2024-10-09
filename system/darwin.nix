{ self, pkgs, config, ... }:

{
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
    pkgs.python3
    pkgs.ruby
    pkgs.rustup
    pkgs.stow
    pkgs.powershell
    pkgs.tmux
    pkgs.tshark
    pkgs.unzip
    pkgs.wget2
    pkgs.whois
    pkgs.zsh
    pkgs.zsh-autosuggestions
  ];
  
  fonts.packages = with pkgs; [
    meslo-lgs-nf
  ];

  users.users.jstaples = {
    name = "jstaples";
    home = "/Users/jstaples";
  };

  security.pam.enableSudoTouchIdAuth = true;

  programs = {
    zsh.enable = true;
  };

  services.nix-daemon.enable = true;
  nix.package = pkgs.nix;
  nix.settings.experimental-features = "nix-command flakes";
  #system.configurationRevision = self.rev or self.dirtyRev or null;
  system.stateVersion = 5;
  nixpkgs.hostPlatform = "aarch64-darwin";
}
