{
  programs.tmux = {
    enable = true;
    clock24 = true;
    keyMode = "vi";
    mouse = true;
    shell = "$SHELL";
    extraConfig = ''
      # Disregard bell rings
      set -g visual-activity off
      set -g visual-bell off
      set -g visual-silence off
      setw -g monitor-activity off
      set -g bell-action none
      
      # Clock mode
      setw -g clock-mode-colour "fg=green bg=black"
      
      # Copy mode
      setw -g mode-style "fg=cyan bg=black bold"
      
      # Panes
      set -g pane-border-style "fg=black"
      set -g pane-active-border-style "fg=cyan"
      
      # Statusbar
      set -g status-position bottom
      set -g status-style "fg=black"
      
      set -g status-left ""
      
      set -g status-right '%Y-%m-%d %H:%M '
      
      setw -g window-status-current-style 'fg=black bg=cyan'
      setw -g window-status-current-format ' #I #W #F '
      
      setw -g window-status-style 'fg=cyan bg=black'
      setw -g window-status-format ' #I #[fg=white]#W #[fg=yellow]#F '
      
      setw -g window-status-bell-style 'fg=yellow bg=green bold'
      
      # messages
      set -g message-style 'fg=yellow bg=green bold'
    '';
  };
}
