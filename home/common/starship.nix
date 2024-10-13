{
  add_newline = true;
  format = "$os$username$hostname$directory$git_branch$git_status$c$rust$golang$nodejs$php$java$kotlin$haskell$python$docker_context$conda$character";

  palette = "sholtor_dark";

  palettes.sholtor_dark = {
    colour_bg0 = "#424242";
    colour_fg0 = "#ffffff";
    colour_fg1 = "#E64747";
    colour_ubuntu = "#EB6536";
    colour_ssh = "#43CCEA";
    colour_folder = "#3EC669";
    colour_lblue = "#43CCEA";
    colour_python = "#E4F34A";
    colour_go = "#7FD5EA";
    colour_node = "#42E66C";
    colour_ruby = "#E64747";
    colour_java = "#E64747";
    colour_julia = "#9B6BDF";
    colour_php = "#4063D9";
    colour_blue = "#458588";
    colour_aqua = "#689d6a";
    colour_green = "#98971a";
    colour_orange = "#d65d0e";
    colour_purple = "#b16286";
    colour_red = "#cc241d";
    colour_yellow = "#d79921";
  };

  os = {
    disabled = false;
    style = "fg:cyan";
    symbols = {
      Alpaquita = " ";
      Alpine = " ";
      AlmaLinux = " ";
      Amazon = " ";
      Android = " ";
      Arch = " ";
      Artix = " ";
      CentOS = " ";
      Debian = " ";
      DragonFly = " ";
      Emscripten = " ";
      EndeavourOS = " ";
      Fedora = " ";
      FreeBSD = " ";
      Garuda = "󰛓 ";
      Gentoo = " ";
      HardenedBSD = "󰞌 ";
      Illumos = "󰈸 ";
      Kali = " ";
      Linux = " ";
      Mabox = " ";
      Macos = " ";
      Manjaro = " ";
      Mariner = " ";
      MidnightBSD = " ";
      Mint = " ";
      NetBSD = " ";
      NixOS = "  ";
      OpenBSD = "󰈺 ";
      openSUSE = " ";
      OracleLinux = "󰌷 ";
      Pop = " ";
      Raspbian = " ";
      Redhat = " ";
      RedHatEnterprise = " ";
      RockyLinux = " ";
      Redox = "󰀘 ";
      Solus = "󰠳 ";
      SUSE = " ";
      Ubuntu = " ";
      Unknown = " ";
      Void = " ";
      Windows = "󰍲 ";
    };
  };

  username = {
    show_always = true;
    style_user = "fg:cyan bold";
    style_root = "fg:red bold";
    format = "[ $user]($style)";
  };

  hostname = {
    ssh_only = false;
    ssh_symbol = ":🌐";
    trim_at = ".";
    format = "[@$hostname$ssh_symbol]($style)";
    style = "fg:cyan";
  };

  directory = {
    format = "[:$path]($style)";
    style = "fg:green";
    home_symbol = "~";
    truncate_to_repo = false;
    use_os_path_sep = true;
  };

  git_branch = {
    symbol = "";
    style = "";
    format = "[[ $symbol $branch ](fg:cyan)]($style)";
  };

  git_status = {
    style = "";
    format = "[[($all_status$ahead_behind )](fg:cyan)]($style)";
  };

  nodejs = {
    symbol = "";
    style = "";
    format = "[[ $symbol( $version) ](fg:colour_node)]($style)";
  };

  c = {
    symbol = " ";
    style = "";
    format = "[[ $symbol( $version) ](fg:colour_blue)]($style)";
  };

  rust = {
    symbol = "";
    style = "";
    format = "[[ $symbol( $version) ](fg:colour_blue)]($style)";
  };

  golang = {
    symbol = "";
    style = "";
    format = "[[ $symbol( $version) ](fg:colour_go)]($style)";
  };

  php = {
    symbol = "";
    style = "";
    format = "[[ $symbol( $version) ](fg:colour_php)]($style)";
  };

  java = {
    symbol = " ";
    style = "";
    format = "[[ $symbol( $version) ](fg:colour_java)]($style)";
  };

  kotlin = {
    symbol = "";
    style = "";
    format = "[[ $symbol( $version) ](fg:colour_blue)]($style)";
  };

  haskell = {
    symbol = "";
    style = "";
    format = "[[ $symbol( $version) ](fg:colour_blue)]($style)";
  };

  python = {
    symbol = "";
    style = "";
    format = "[[ $symbol( $version) ](fg:colour_python)]($style)";
  };

  docker_context = {
    symbol = "";
    style = "";
    format = "[[ $symbol( $context) ](fg:#83a598)]($style)";
  };

  conda = {
    style = "";
    format = "[[ $symbol( $environment) ](fg:#83a598)]($style)";
  };

  character = {
    disabled = false;
    success_symbol = "[❯](fg:green)";
    error_symbol = "[❯](fg:red)";
    vimcmd_symbol = "[❮](fg:green)";
    vimcmd_replace_one_symbol = "[❮](fg:purple)";
    vimcmd_replace_symbol = "[❮](fg:purple)";
    vimcmd_visual_symbol = "[❮](fg:yellow)";
  };
}
