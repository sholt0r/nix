{ config, ... }:
{
  homebrew = {
    enable = true;
    brews = [
      "ansible"
      "ansible-lint"
      "gnupg"
      "helm"
      "iproute2mac"
      "k9s"
      "kompose"
      "kubectl"
    	"mas"
      "pam-reattach"
      "pinentry-mac"
      "pinentry-touchid"
      "step"
	    "synergy-core"
      "talosctl"
      "wireguard-tools"
	  ];
	  casks = [
      "alacritty"
    	"discord"
	    "displaylink"
      "docker"
	    "firefox"
      "gimp"
      "gitbutler"
      "google-chrome"
      "obsidian"
	    "onedrive"
      "secretive"
      "spotify"
      "steam"
      "utm"
      "visual-studio-code"
      "xemu"
    ];
    masApps = {
      "Bitwarden" = 1352778147;
      "Magnet" = 441258766;
      "Microsoft Excel" = 462058435;
      "Microsoft Outlook" = 985367838;
      "Microsoft PowerPoint" = 462062816;
      "Microsoft Word" = 462054704;
      "Twingate" = 1501592214;
      "Windows App" = 1295203466;
    };
    taps = [
      "jorgelbg/tap"
      "siderolabs/tap"
    ];
  	onActivation.cleanup = "zap";
  	onActivation.autoUpdate = true;
  	onActivation.upgrade = true;
  };
}

