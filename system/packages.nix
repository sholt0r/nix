{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.bws
    pkgs.curl
    pkgs.dig
    pkgs.eza
    pkgs.fd
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
    pkgs.tshark
    pkgs.unzip
    pkgs.wget2
    pkgs.whois
    pkgs.zig
  ];
}
