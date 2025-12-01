# zen.tmux - Minimal tmux theme for zen.nvim

# Colors 
bg="default"
fg="default"
dim="#c0c0c0"
accent="#b0a0b9"
prefix="#b9a0a0"

# Pane borders
set -g pane-border-style "fg=$dim"
set -g pane-active-border-style "fg=$dim"
set -g mode-style "bg=$dim fg=$fg"

# Status bar
set -g status-position top
set -g status-style "bg=$bg fg=$fg"
set -g status-left-length 100
set -g status-right-length 100

# Session (left)
set -g status-left "#[fg=$dim,bold](#[nobold]#{?client_prefix,#[fg=$prefix],#[fg=$fg]} #S#[fg=$dim,bold])#[nobold]"

# Path (right)
set -g status-right "#[fg=$dim,bold](#[nobold]#[fg=$fg] #{b:pane_current_path}#[fg=$dim,bold])#[nobold]"

# Windows (center)
set -g status-justify absolute-centre
setw -g window-status-format "#[fg=$dim]#I:#W"
setw -g window-status-current-format "#[fg=$accent]#I:#[fg=$fg]#W"
set -g window-status-separator " #[fg=$dim,bold]| "

# Messages
set -g message-style "bg=default fg=$fg"
