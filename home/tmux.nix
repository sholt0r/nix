{
  programs.tmux = {
    enable = true;
    clock24 = true;
    keyMode = "vi";
    mouse = true;
    shell = "/etc/profiles/per-user/jstaples/bin/zsh";
  };
}
