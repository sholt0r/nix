{ config, ... }:
{
  homebrew = {
    enable = true;
    brews = [
      "kompose"
      "kubectl"
    	"mas"
      "pam-reattach"
	    "synergy-core"
      "virt-manager"
	  ];
	  casks = [
    	"discord"
	    "displaylink"
      "docker"
	    "firefox"
      "gimp"
      "google-chrome"
	    "iterm2"
      "itermai"
      "obsidian"
	    "onedrive"
      "secretive"
      "spotify"
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
  	onActivation.cleanup = "zap";
  	onActivation.autoUpdate = true;
  	onActivation.upgrade = true;
  };
}

