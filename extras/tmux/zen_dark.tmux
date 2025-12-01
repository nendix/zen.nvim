# zen.tmux - Minimal tmux theme for zen.nvim

# Colors 
bg="default"
fg="default"
muted="#626262"
accent="#b0a0b9"
prefix="#b9a0a0"

# Pane borders
set -g pane-border-style "fg=$muted"
set -g pane-active-border-style "fg=$fg"
set -g mode-style "bg=$muted fg=$fg"

# Status bar
set -g status-position top
set -g status-style "bg=$bg fg=$fg"
set -g status-left-length 100
set -g status-right-length 100

# Session (left)
set -g status-left "#[fg=$muted,bold](#[nobold]#{?client_prefix,#[fg=$prefix],#[fg=$fg]} #S#[fg=$muted,bold])#[nobold]"

# Path (right)
set -g status-right "#[fg=$muted,bold](#[nobold]#[fg=$fg] #{b:pane_current_path}#[fg=$muted,bold])#[nobold]"

# Windows (center)
set -g status-justify absolute-centre
setw -g window-status-format "#[fg=$muted]#I:#W"
setw -g window-status-current-format "#[fg=$accent,bold]#I:#[fg=$fg,bold]#W"
set -g window-status-separator " #[fg=$muted,bold]| "

# Messages
set -g message-style "bg=default fg=$fg"
