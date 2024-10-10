{ pkgs, ... }:
{
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
}
