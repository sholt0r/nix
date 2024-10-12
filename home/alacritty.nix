{
  live_config_reload = true;
  working_directory = "~/";

  env = {
    "TERM" = "xterm-256color";
  };

  window = {
    decorations = "buttonless";
    dynamic_padding = false;
    dynamic_title = true;
    opacity = 0.9;
    blur = true;
    padding.x = 10;
    padding.y = 10;
  };

  font = {
    size = 16.0;

    normal.family = "MesloLGS NF";
    bold.family = "MesloLGS NF";
    italic.family = "MesloLGS NF";
    bold_italic.family = "MesloLGS NF";
  };

  cursor.style = "Beam";

  shell = {
    program = "/etc/profiles/per-user/jstaples/bin/zsh";
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
