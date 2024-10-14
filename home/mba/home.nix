{ config, lib, pkgs, ... }:
{
  imports = [
    ../common/tmux.nix
  ];

  home = {
    stateVersion = "24.05";
    sessionPath = [
      "/opt/homebrew/bin"
      "$HOME/.local/bin"
    ];
  };

  programs = {
    alacritty = {
      enable = true;
      settings = import ./alacritty.nix;
    };
    git = {
      enable = true;
      userEmail = "sholtor@kobu.au";
      userName = "sholt0r";
      signing = {
        key = "AE1E5906";
        signByDefault = true;
      };
      extraConfig = {
        init.defaultBranch = "main";
      	core.editor = "nvim";
      };
    };
    home-manager = {
      enable = true;
      path = "$XDG_CONFIG_HOME/nix-darwin/nixpkgs/";
    };
    neovim = {
      enable = true;
      viAlias = true;
      vimAlias = true;
    };
    starship = {
      enable = true;
      enableZshIntegration = true;
      settings = import ../common/starship.nix;
    };
    zoxide = {
      enable = true;
      enableZshIntegration = true;
      options = [
        "--cmd cd"
      ];
    };
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      autosuggestion.strategy = ["history" "completion" "match_prev_cmd"];
      syntaxHighlighting.enable = true;
      history = {
        path = "$HOME/.local/.zsh_histfile";
        save = 100000;
        size = 100000;
      };
      sessionVariables = {
        XDG_CONFIG_HOME = "$HOME/.config";
        XDG_DATA_HOME = "$HOME/.local/data";
        GIT_CONFIG_GLOBAL = "$HOME/.config/git/config";
        KUBECONFIG = "$HOME/.config/kube/config";
        TALOSCONFIG = "$HOME/.config/talos/config";
        BWS_ACCESS_TOKEN = "$(security find-generic-password -w -s 'BWS_ACCESS_TOKEN' -a jstaples)";
      };
      shellAliases = {
        ls = "eza";
        mba-rebuild = "darwin-rebuild switch --flake ~/.dotfiles/nix/.config/nix#mba";
      };
      initExtra = ''
      bindkey "^[[H" beginning-of-line
      bindkey "^[[F" end-of-line
      bindkey "\e[3~" delete-char
      source $XDG_CONFIG_HOME/talos/completion.zsh.inc
      source $XDG_CONFIG_HOME/kube/completion.zsh.inc
      source <(fzf --zsh)
      '';
    };
  };
}
