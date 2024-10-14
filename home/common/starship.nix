{
  add_newline = true;
  format = "$os$username$hostname$directory$git_branch$git_status$c$rust$golang$nodejs$php$java$kotlin$haskell$python$docker_context$kubernetes$conda$character";

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
    format = "[ $symbol $branch ](fg:cyan)";
  };

  git_status = {
    format = "[($all_status$ahead_behind )](fg:cyan)";
  };

  nodejs = {
    symbol = "";
    format = "[ $symbol( $version) ](fg:colour_node)";
  };

  c = {
    symbol = " ";
    format = "[ $symbol( $version) ](fg:colour_blue)";
  };

  rust = {
    symbol = "";
    format = "[ $symbol( $version) ](fg:colour_blue)";
  };

  golang = {
    symbol = "";
    format = "[ $symbol( $version) ](fg:colour_go)";
  };

  php = {
    symbol = "";
    format = "[ $symbol( $version) ](fg:colour_php)";
  };

  java = {
    symbol = " ";
    format = "[ $symbol( $version) ](fg:colour_java)";
  };

  kotlin = {
    symbol = "";
    format = "[ $symbol( $version) ](fg:colour_blue)";
  };

  haskell = {
    symbol = "";
    format = "[ $symbol( $version) ](fg:colour_blue)";
  };

  python = {
    symbol = "";
    format = "[ $symbol( $version) ](fg:colour_python)";
  };

  docker_context = {
    symbol = "";
    format = "[ $symbol( $context) ](fg:#83a598)";
  };

  kubernetes = {
    symbol = "󱃾";
    format = "via [ $symbol( $context(\($namespace\))) ](fg:#326CE5)";
  };

  conda = {
    format = "[ $symbol( $environment) ](fg:#83a598)";
  };

  character = {
    disabled = false;
    success_symbol = "[\n❯](fg:green)";
    error_symbol = "[\n❯](fg:red)";
    vimcmd_symbol = "[\n❮](fg:green)";
    vimcmd_replace_one_symbol = "[\n❮](fg:purple)";
    vimcmd_replace_symbol = "[\n❮](fg:purple)";
    vimcmd_visual_symbol = "[\n❮](fg:yellow)";
  };
}
