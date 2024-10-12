{
  env = {
    "TERM" = "xterm-256color";
  };

  background_opacity = 0.95;

  window = {
    padding.x = 10;
    padding.y = 10;
    decorations = "buttonless";
  };

  font = {
    size = 16.0;
    use_thin_strokes = true;

    normal.family = "MesloLGS NF";
    bold.family = "MesloLGS NF";
    italic.family = "MesloLGS NF";
  };

  cursor.style = "Beam";

  shell = {
    program = "zsh";
    args = [
      "-C"
      "neofetch"
    ];
  };

  colors = {
    # Default colors
    primary = {
      background = "0x282b33";
      foreground = "0xc5cfdf";
    };

    # Normal colors
    normal = {
      black =   "0x3f4350";
      red =     "0xdf5460";
      green =   "0xa4e174";
      yellow =  "0xd08f51";
      blue =    "0x51adf8";
      magenta = "0xcb7ed9";
      cyan =    "0x5ecddd";
      white =   "0xbabfc9";
    };

    # Bright colors
    bright = {
      black =   "0x707681";
      red =     "0xde5460";
      green =   "0xa3e174";
      yellow =  "0xd08f51";
      blue =    "0x51adf8";
      magenta = "0xcb7ed9";
      cyan =    "0x5ecddc";
      white =   "0xfefefe";
    };
  };
}
