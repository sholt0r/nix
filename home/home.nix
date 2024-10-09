{ config, lib, pkgs, ... }:
{
  home = {
    stateVersion = "24.05";
    sessionPath = [
      "/opt/homebrew/bin"
    ];
  };

  programs = {
    git = {
      enable = true;
      userEmail = "sholtor@kobu.au";
      userName = "sholt0r";
      extraConfig = {
        init.defaultBranch = "main";
      	core.editor = "nvim";
      };
    };
    home-manager = {
      enable = true;
      path = "$HOME/.config/nix-darwin/nixpkgs/";
    };
    neovim = {
      enable = true;
      viAlias = true;
      vimAlias = true;
    };
    starship = {
      enable = true;
      enableZshIntegration = true;
      settings = import ./starship.nix
    };
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      autosuggestion.strategy = ["history" "completion" "match_prev_cmd"];
      syntaxHighlighting.enable = true;
      history = {
        path = ".local/.zsh_histfile";
        save = 100000;
        size = 100000;
      };
      sessionVariables = {
        XDG_CONFIG_HOME = "$HOME/.config/";
        XDG_DATA_HOME = "$HOME/.local/data/";
        GIT_CONFIG_GLOBAL = "$HOME/.config/git_global_config";
      };
      shellAliases = {
        ls = "eza";
      };
      initExtra = ''
      bindkey "^[[H" beginning-of-line
      bindkey "^[[F" end-of-line
      bindkey "\e[3~" delete-char
      '';
    };
  };
}
