{ config, ... }:
{
  homebrew = {
    enable = true;
    brews = [
	"mas"
	"synergy-core"
	  ];
	  casks = [
    	"discord"
	"displaylink"
	"firefox"
	    "iterm2"
      "obsidian"
	"onedrive"
      "secretive"
      "spotify"
      "visual-studio-code"
    ];
  	onActivation.cleanup = "zap";
  	onActivation.autoUpdate = true;
  	onActivation.upgrade = true;
  };
}

